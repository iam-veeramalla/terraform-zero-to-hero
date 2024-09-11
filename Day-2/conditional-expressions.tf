provider "aws" {
  region = "us-east-1"
}

variable "create_instance" {
  description = "Environment type"
  type        = string
  default     = "1"
}
resource "aws_instance" "condtion" {
    count = var.create_instance ? 1 : 0

    ami = "ami-0182f373e66f89c85"
    instance_type = "t2.micro"
  
}