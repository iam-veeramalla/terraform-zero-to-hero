provider "aws" {
  region = "us-east-1"
  alias = "us-eastone"
}

provider "aws" {
  region = "us-east-2"
  alias = "us-easttwo"
}

resource "aws_instance" "usoneregion_instance" {
  ami = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  provider = aws.us-eastone
}
resource "aws_instance" "ustworegion_instance" {
  ami = "ami-09efc42336106d2f2"
  instance_type = "t2.micro"
  provider = aws.us-easttwo
}
