provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  description = "value of AMI Id"
}

variable "instance_type" {
  description = "value of ec2 instance type"
  type        = map(string)
  default = {
    "dev"   = "t2.small"
    "stage" = "t2.xlarge"
    "prod"  = "t2.medium"
  }
}

module "ec2_instance" {
  source        = "./modules/ec2-instance"
  ami           = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}

module "s3_bucket" {
  source = "./modules/s3"
}

module "dynamodb_table" {
  source = "./modules/dynamodb"
}