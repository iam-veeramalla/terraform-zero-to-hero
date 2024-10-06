provider "aws" {
  region="us-east-1"
}

provider "vault" {
  address = "http://204.236.241.158:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"
    parameters = {
      role_id   = "1b57a47a-cc87-3660-c707-ae016d983a64"
      secret_id = "a8a22f71-db1a-a030-2a5f-a34f64ea1bbf"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "test-secret"
}


resource "aws_instance" "sasiram" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  tags = {
    secret = data.vault_kv_secret_v2.example.data["username"]
   }
}