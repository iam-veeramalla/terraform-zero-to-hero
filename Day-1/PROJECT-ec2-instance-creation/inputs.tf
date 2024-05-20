variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "ami_id" {
  description = "Ami ID of the machine"
  type = string
  default = "ami-04b70fa74e45c3917"
}
