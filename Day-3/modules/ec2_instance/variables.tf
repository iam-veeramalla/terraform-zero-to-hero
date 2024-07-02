variable "ami_var" {
    description = "ami(Amazon Machine Image) contains confiuration to launch a machine"
  
}
variable "var_key_name" {
  description = "key value pair to ssh into the aws instance"
}
variable "varble_subnet_id" {
  description = "instance will be placed in subnet of the vpc"
}
variable "variable_instance_type" {
  description = "this define the size specifications of the ec2 instance"
}
