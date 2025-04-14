provider "aws" {
    region = "us-west-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0657605d763ac72a8"  # Specify an appropriate AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "test-function"
    Team = "test"
    Billing = "test"
  }
}
