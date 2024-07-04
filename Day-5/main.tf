provider "aws" {
  region = "ap-south-1"
}

variable "cidr"{
  default = "10.0.0.0/16"
}
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "generated_key" {
  key_name   = "aws_login"
  public_key = tls_private_key.example.public_key_openssh
}
resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    "key" = "myigw"
  } 
  
}
resource "aws_subnet" "mysubnet1" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone       = "ap-south-1"
  map_public_ip_on_launch = true
}
resource "aws_route_table" "routetb"{
  vpc_id = aws_vpc.myvpc.id
   route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}
resource "aws_route_table_association" "rta1"{
  route_table_id = aws_route_table.routetb.id
  subnet_id = aws_subnet.mysubnet1.id
}

resource "aws_security_group" "asg" {
  name = "web"
  vpc_id = aws_vpc.myvpc.id
  ingress  {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress { 
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Web-sg"
  }
}
resource "aws_instance" "my_ec2" {
  ami = ""
  instance_type = ""
  subnet_id = aws_subnet.mysubnet1.id
  key_name = aws_key_pair.generated_key.key_name
  vpc_security_group_ids = [aws_security_group.asg.id]

  connection {
    type        = "ssh"
    user        = "ubuntu"  # Replace with the appropriate username for your EC2 instance
    private_key = tls_private_key.example.private_key_pem  # Replace with the path to your private key
    host        = self.public_ip
  }

   # File provisioner to copy a file from local to the remote EC2 instance
   provisioner "file"{
    source      = "app.py"  # Replace with the path to your local file
    destination = "/home/ubuntu/app.py"  # Replace with the path on the remote instance
   }
     provisioner "remote-exec" {
    inline = [
      "echo 'Hello from the remote instance'",
      "sudo apt update -y",  # Update package lists (for ubuntu)
      "sudo apt-get install -y python3-pip",  # Example package installation
      "cd /home/ubuntu",
      "sudo pip3 install flask",
      "sudo python3 app.py &",
    ]
  }
}
