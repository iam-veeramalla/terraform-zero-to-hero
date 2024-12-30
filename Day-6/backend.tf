terraform {
  backend "s3" {
    bucket = "my-backend-test-bucket"
    key    = "shanu/terraform.tfstate"
    region = "ap-south-1"
  }
}