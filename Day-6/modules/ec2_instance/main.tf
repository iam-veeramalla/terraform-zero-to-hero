provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_instance" {
  ami = var.var_ami
  instance_type = var.var_instance_type
  key_name = var.var_key_name
  subnet_id = var.var_subnet
}
