provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0d682f26195e9ec0f"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0590301c8d3ad0c38"
    key_name = "key1"
}