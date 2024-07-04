module "ec2_instance" {
    source = "./modules/ec2-instance"
    //referencing the externalised variables in Day-3/variables.tf
    ami_var=var.oami_var
    var_key_name=var.ovar_key_name
    varble_subnet_id=var.ovarble_subnet_id
    variable_instance_type=var.ovariable_instance_type

    //Directly assigining the values to the remote module variables.tf in ec2-instance/variables.tf
    /*ami_var="ami-0f58b397bc5c1f2e8"
    var_key_name="aws_login"
    varble_subnet_id="subnet-0a94c001e716ebd8b"
    variable_instance_type="t2.micro"*/
}
