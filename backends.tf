terraform {
  backend "s3" {
    bucket = "thisisthebucketname"
    key    = "./terraform.tfstate"
    region = "us-east-1"
  }
}
