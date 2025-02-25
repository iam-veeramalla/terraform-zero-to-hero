terraform {
  backend "s3" {
    bucket         = "neha-s3-demo-xyz" # change this
    key            = "neha/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
