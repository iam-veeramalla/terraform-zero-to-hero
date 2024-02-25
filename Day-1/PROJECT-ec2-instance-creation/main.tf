provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0e670eb768a5fc3d4"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet        = "subnet-0a4a855f38c439e07"
}
