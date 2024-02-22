provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "65.0.85.106:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "4c53727e-4d09-bb45-7ad0-c4816dc8bd7b"
      secret_id = "0c9c84b6-beea-39a8-9865-85d11ff595a8"
    }
  }
}

/*data "vault_kv_secret_v2" "example" {
  mount = "secret" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["foo"]
  }
}*/
