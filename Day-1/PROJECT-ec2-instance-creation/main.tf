provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
   ami           = "ami-036f5574583e16426"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0bd8db4ecd210d65b"
    key_name = "terraform"
}
