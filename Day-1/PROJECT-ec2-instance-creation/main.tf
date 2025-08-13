provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "test" {
    ami           = "ami-084568db4383264d4"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
