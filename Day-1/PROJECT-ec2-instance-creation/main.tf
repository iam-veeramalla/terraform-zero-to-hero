provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0fc5d935ebf8bc3bc" # Specify an appropriate AMI ID
  instance_type = "t2.micro"
  key_name      = "Terraform_test_keypair"

  tags = {
    Name             = "test-application"
    Environment      = "dev"
    Product_Code     = "dev-team"
    team_leavel_name = "sweden"
  }
}
