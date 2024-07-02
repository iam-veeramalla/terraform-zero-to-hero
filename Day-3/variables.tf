variable "oami_var" {
    description = "ami(Amazon Machine Image) contains confiuration to launch a machine"
  
}
variable "ovar_key_name" {
  description = "key value pair to ssh into the aws instance"
}
variable "ovarble_subnet_id" {
  description = "instance will be placed in subnet of the vpc"
}
variable "ovariable_instance_type" {
  description = "this define the size specifications of the ec2 instance"
}
