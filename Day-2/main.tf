provider "aws" {
  region = "us-east-1"
}

variable "ami" {
    description = "value"
    type = string
    default = "value"
  
}

variable "instance_type" {
    description = "value"
    type = string
    default = "value"
  
}
resource "aws_instance" "tfvariable" {
    ami = var.ami
    instance_type = var.instance_type
}