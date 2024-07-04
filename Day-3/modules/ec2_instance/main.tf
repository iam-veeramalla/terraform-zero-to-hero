resource "aws_instance" "ec2_instance" {
  ami = var.ami_var
  instance_type = var.variable_instance_type
  subnet_id = var.varble_subnet_id
  key_name = var.var_key_name
}
