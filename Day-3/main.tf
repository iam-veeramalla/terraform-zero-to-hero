provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0e86e20dae9224db8" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-019ea91ed9b5252e7". # replace this
}
