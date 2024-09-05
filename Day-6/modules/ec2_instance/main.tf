provider "aws" {
    region = "us-east-1"
}

variable "ami_id" {
  description = "This is AMI for the instance"
}

variable "instance_of_type" {
  description = "This is the instance type, for example: t2.micro"
}

resource "aws_instance" "example" {
    ami = var.ami_id
    instance_type = var.instance_of_type
}
