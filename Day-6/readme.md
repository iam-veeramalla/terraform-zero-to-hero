to create an environment
cmd >  terraform workspace new <workspace name>
 eg : terraform workspace new prod

to see on which environment we are in 
cmd > terraform workspace show

to list all the available environemnts
cmd > terraform workspace list

to switch from one to another environment 
cmd > terraform workspace select <workspace name>

to delete a workspace 
cmd > terraform workspace delete <workspace name> 


//we can create multiple tfvar files for each envronment for setting up values by switching between enviroenmts  and while doing 
// apply we can supply -tfvar file ="envfilename.tfvars"

cheat sheet
https://spacelift.io/blog/terraform-commands-cheat-sheet
