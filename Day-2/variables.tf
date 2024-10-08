

provider "aws" {
  region = "us-east-1"
}


variable "ami" {
    description = "value"
    type = string
    default = "ami-0182f373e66f89c85"
  
}
variable "instance_type" {
    description = "value"
    type = string
    default = "t2.micro"
  
}

resource "aws_instance" "aws_instance_variables" {
    ami = var.ami
    instance_type = var.instance_type
}

output "public_ip_output" {
    description = "value"
    value = aws_instance.aws_instance_variables.public_ip
  
}