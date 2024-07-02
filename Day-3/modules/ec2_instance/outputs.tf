output "ec2_public_key" {
  value = aws_instance.ec2_instance.public_ip
}
