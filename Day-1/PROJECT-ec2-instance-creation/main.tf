provider "aws" {
    region = "ap-southeast-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-01811d4912b4ccb26"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
