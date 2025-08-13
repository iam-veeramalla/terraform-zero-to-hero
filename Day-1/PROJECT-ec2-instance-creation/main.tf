provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-078473b594fa8b63b"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-01be067357000943b"
    key_name = "web.pem"
}
