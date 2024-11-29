variable "cidr" {
  default = "10.0.0.0/16"
}
variable "ami_id" {
  description = "EC2 AMI Id"
  type = string
}
variable "instance_type" {
   description = "EC2 Instance Type"
  type = string
}