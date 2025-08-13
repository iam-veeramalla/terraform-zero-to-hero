provider "aws" {
    alias = "us-east-1"
    region = "us-east-1"
}
resource "aws_instance" "basant" {
    provider = aws.us-east-1
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    key_name = "terraformdemo"
    
}

provider "aws" {
    alias = "us-east-2"
    region = "us-east-2" 
}
resource "aws_instance" "mohanty" {
    provider = aws.us-east-2
    ami = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"
    
}
output "instance_public_ip" {
    value = aws_instance.basant.public_ip

}
output "instance_public_ip1" {
    value = aws_instance.mohanty.public_ip
  
}
