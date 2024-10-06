provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "module_example" {
    ami = var.ami
    instance_type = var.instance_type

}