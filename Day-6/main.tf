module "ec2_instance" {
  source = "./modules/ec2_instance"
  var_ami = lookup(var.ext_ami, terraform.workspace , "some default if no environment specified" )
  var_instance_type = lookup(var.ext_instance_type , terraform.workspace , "default val if no env specifed")
  var_key_name = lookup(var.ext_keypem , terraform.workspace , "default value")
  var_subnet = lookup(var.ext_subnet ,  terraform.workspace , "default val")
}

variable "ext_ami" {
 type = map(string)

 default = {
   "dev" = "ami-0f58b397bc5c1f2e8"
   "stage" = "ami-0f58b397bc5c1f2e8"
   "prod" = "ami-0f58b397bc5c1f2e8"

 } 
}

variable "ext_instance_type" {
  type = map(string)
  default = {
    "dev" = "t2.micro"
   "stage" = "t2.medium"
   "prod" = "t2.large"
  }
}

variable "ext_subnet" {
  type = map(string)
  default = {
  "dev" = "subnet-0a94c001e716ebd8b"
   "stage" = "subnet-0a94c001e716ebd8b"
   "prod" = "subnet-0a94c001e716ebd8b"
  }
}
variable "ext_keypem" {
  type = map(string)
  default = {
    "dev" ="aws_login"
    "stage" = "aws_login"
    "prod" = "aws_login"
  }
}

//we can create multiple tfvar files for each envronment for setting up values by switching between enviroenmts  and while doing 
// apply we can supply -tfvar file ="envfilename.tfvars"
