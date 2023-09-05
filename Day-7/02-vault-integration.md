# Vault Integration

Here are the detailed steps for each of these steps:

1. Create an AWS EC2 instance with Ubuntu.

To create an AWS EC2 instance with Ubuntu, you can use the AWS Management Console or the AWS CLI. Here are the steps involved in creating an EC2 instance using the AWS Management Console:

- Go to the AWS Management Console and navigate to the EC2 service.
- Click on the Launch Instance button.
- Select the Ubuntu Server xx.xx LTS AMI.
- Select the instance type that you want to use.
- Configure the instance settings.
- Click on the Launch button.

2. Install Vault on the EC2 instance.

To install Vault on the EC2 instance, you can use the following command:

```
sudo apt install vault
```

3. Initialize Vault.

To initialize Vault, you can use the following command:

```
vault init
```

This will create a default configuration file and a key/value store.

4. Create a secret in Vault.

To create a secret in Vault, you can use the following command:

```
vault kv put my_secret value=my_secret_value
```

5. Configure Terraform to read the secret from Vault.

To configure Terraform to read the secret from Vault, you need to add the following code to your Terraform configuration file:

```hcl
terraform {
  required_providers {
    vault = "~> 3.0"
  }
}

provider "vault" {
  address = "http://localhost:8200"
}

resource "vault_generic_secret" "my_secret" {
  path = "my_secret"
}

variable "my_secret_value" {
  value = vault_generic_secret.my_secret.value
}
```

6. Apply the Terraform configuration.

Once you have configured Terraform, you can apply the configuration to create the resources in your infrastructure.

```
terraform apply
```

This will create a new resource called vault_generic_secret.my_secret. The value of this resource will be the value of the secret that we created in Vault.