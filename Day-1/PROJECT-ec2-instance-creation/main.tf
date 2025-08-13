provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0e2c8caa4b6378d8c"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
