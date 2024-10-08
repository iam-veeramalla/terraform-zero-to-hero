output "ec2_intance_public_ip" {
  value = aws_instance.module_example.public_ip
  
}