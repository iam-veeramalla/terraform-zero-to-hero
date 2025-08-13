You are formatting the configuration files and what is the flag you should use to
process the subdirectories as well?
              terraform fmt -recursive

-----------------------------------------------------------------------------
What is the command import?
The terraform import command is used to import existing resources
into Terraform.
Terraform is able to import existing infrastructure. This allows you
take resources you've created by some other means and bring it under
Terraform management

---------------------------------------------------------------------------
What is the default workspace name?
default
-----------------------------------------------------------------------------

. What is the command to list the workspaces?
terraform workspace list


What is the command to create a new workspace?
terraform workspace new <name>


What is the command to show the current workspace?
terraform workspace show

 What is the command to switch the workspace?
terraform workspace select <workspace name>


What is the command to delete the workspace?
terraform workspace delete <workspace name>

Can you delete the default workspace?
No. You can't ever delete default workspace
---------------------------------------------------------------------------------

 You are working on terraform files and you want to list all the resources. What
is the command you should use?
terraform state list


How do you list the resources for the given name?
terraform state list <resource name>


----------------------------------------------------------------------------

What is the command that shows the attributes of a single resource in the state
file?
terraform state show 'resource name'

-----------------------------------------------------------------------------
If terraform crashes where should you see the logs?
crash.log




