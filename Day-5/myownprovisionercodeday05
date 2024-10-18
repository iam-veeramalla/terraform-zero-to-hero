provider "aws" {
  region = "ap-south-1"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

resource "aws_key_pair" "example" {
  key_name = "terraform-demo-mayur1"
  public_key = file("~/.ssh/id_ed25519.pub") 
}

#c:\Users\nikit\.ssh\id_ed25519.pub

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr
}

resource "aws_subnet" "sub1" {
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-south-1a"
  vpc_id = aws_vpc.myvpc.id
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id = aws_subnet.sub1.id
  route_table_id = aws_route_table.RT.id
}

resource "aws_security_group" "mysg" {
  vpc_id = aws_vpc.myvpc.id

  ingress {
    description = "HTTP"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "mysg"
  }
}

resource "aws_instance" "my-ec2-instance" {
  ami = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.micro"
  key_name = aws_key_pair.example.key_name
  vpc_security_group_ids = [aws_security_group.mysg.id]
  subnet_id = aws_subnet.sub1.id

  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("~/.ssh/id_ed25519")
    host = self.public_ip
  }
  provisioner "file" {
    source = "app.py"
    destination = "/home/ubuntu/app.py"
  }
  provisioner "remote-exec" {
    inline = [  
        "echo'Hello from remote instance'",
        "sudo apt update -y",
        "sudo apt-get install -y python3-pip",
        "cd /home/ubuntu",
        "sudo pip3 install flask",
        "sudo python app.py &",
    ]
  }
}
#c:\Users\nikit\.ssh\id_ed25519
