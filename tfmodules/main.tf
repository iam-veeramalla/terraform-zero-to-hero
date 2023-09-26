provider "aws"{
  region  = var.rgion
  access_key = var.acki
  secret_key = var.scki
}

resource "aws_instance" "today" {
   ami= var.mac_img
   subnet_id = var.sb_id
   key_name= var.kname
   instance_type= var.ins_type
   #count=2
   #vpc_security_group_ids = [aws_security_group.teja-securitygroup.id]
   tags = {
	    Name= "t-instance"
   }
}

// create vpc
resource "aws_vpc" "vpc-teja" {
  cidr_block = var.avpc
  instance_tenancy = var.avpc-ins-ten
}

# output "opopop" {
#   value = aws_instance.today.id
#   sensitive = false
#   description = "value of amazon machine image is shown"
# }

# demo output
output "keypair" {
  value = "value of the key pair, statement gets printed after terraform plan"
}


// create subnet

resource "aws_subnet" "subnet-teja" {
  vpc_id     = aws_vpc.vpc-teja.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "tsubnet"
  }
}

// create gateway

resource "aws_internet_gateway" "gateway-teja" {
  vpc_id = aws_vpc.vpc-teja.id

  tags = {
    Name = "tgateway"
  }
}

// create route_table

resource "aws_route_table" "rt-teja" {
  vpc_id = aws_vpc.vpc-teja.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway-teja.id
  }

  tags = {
    Name = "troutetable"
  }
}

// create aws route table association

resource "aws_route_table_association" "teja-one-routetable-association" {
  subnet_id      = aws_subnet.subnet-teja.id
  route_table_id = aws_route_table.rt-teja.id
}

// create security group

# resource "aws_security_group" "teja-securitygroup" {
#   name        = "teja-securitygroup"
#   vpc_id      = aws_vpc.vpc-teja.id

#   ingress {
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "teja-tls"
#   }
# }



# aws s3 bucket

resource "aws_s3_bucket" "s3_rs" {
  bucket = "thisisthebucketname" 
  tags = {
    Name = "poiuy"
  }
}

