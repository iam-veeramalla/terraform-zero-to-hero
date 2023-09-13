# Terraform tfvars

In Terraform, `.tfvars` files (typically with a `.tfvars` extension) are used to set specific values for input variables defined in your Terraform configuration. 

They allow you to separate configuration values from your Terraform code, making it easier to manage different configurations for different environments (e.g., development, staging, production) or to store sensitive information without exposing it in your code.

Here's the purpose of `.tfvars` files:

1. **Separation of Configuration from Code**: Input variables in Terraform are meant to be configurable so that you can use the same code with different sets of values. Instead of hardcoding these values directly into your `.tf` files, you use `.tfvars` files to keep the configuration separate. This makes it easier to maintain and manage configurations for different environments.

2. **Sensitive Information**: `.tfvars` files are a common place to store sensitive information like API keys, access credentials, or secrets. These sensitive values can be kept outside the version control system, enhancing security and preventing accidental exposure of secrets in your codebase.

3. **Reusability**: By keeping configuration values in separate `.tfvars` files, you can reuse the same Terraform code with different sets of variables. This is useful for creating infrastructure for different projects or environments using a single set of Terraform modules.

4. **Collaboration**: When working in a team, each team member can have their own `.tfvars` file to set values specific to their environment or workflow. This avoids conflicts in the codebase when multiple people are working on the same Terraform project.

## Summary

Here's how you typically use `.tfvars` files

1. Define your input variables in your Terraform code (e.g., in a `variables.tf` file).

2. Create one or more `.tfvars` files, each containing specific values for those input variables.

3. When running Terraform commands (e.g., terraform apply, terraform plan), you can specify which .tfvars file(s) to use with the -var-file option:

```
terraform apply -var-file=dev.tfvars
```

By using `.tfvars` files, you can keep your Terraform code more generic and flexible while tailoring configurations to different scenarios and environments.