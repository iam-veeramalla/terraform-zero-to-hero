variable "cidr" {
  default = "10.0.0.0/16"
}
variable "ami_id" {
  description = "EC2 AMI Id"
  type = String
}