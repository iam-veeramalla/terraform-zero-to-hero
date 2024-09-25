provider "aws"{
    region = "us-east-1"
}

variable "ami" {
  default = "this is ami value"
}
variable "instance_type" {
    default = "this is instance type value"
}



resource "aws_instance" "test"{
    ami= var.ami
    instance_type= var.instance_type

}