 provider "aws" {
   region = "us-east-1"
 }

 variable "ami" {
   description = "this is ami value"
 }

 variable "instance_type" {
    description = "this is instance type"
   type = map(string)
   default = {
     "dev" = "t2.micro"
     "stage" = "t2.medium"
     "prod" = "t2.xlarge"
   }
 }
 module "namespace_demo" {
   source = "./modules/ec2-instance"
   ami = var.ami
   instance_type = lookup(var.instance_type,terraform.workspace,"t2.micro")

 }