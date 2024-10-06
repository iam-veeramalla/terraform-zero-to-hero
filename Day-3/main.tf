provider "aws" {
  region = "us-east-1"
}

module "ec2-instance_example_basic" {
  source  = "./modules/ec2_instance"
  ami = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
}