provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-09a9858973b288bdd"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
