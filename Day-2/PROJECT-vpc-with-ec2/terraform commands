# Terraform Commands — Plain English

## Core
| Command | What it does (simple) | Example |
|---|---|---|
| `terraform init` | Get this folder ready (downloads plugins, sets up backend). | `terraform init` |
| `terraform validate` | Check for typos or bad config. | `terraform validate` |
| `terraform fmt` | Neatly format your `.tf` files. | `terraform fmt -recursive` |
| `terraform plan` | Dry-run: shows what will change, but does nothing. | `terraform plan` |
| `terraform plan -out=plan.tfplan` | Save that dry-run to a file. | `terraform plan -out=plan.tfplan` |
| `terraform apply` | Do the changes for real. | `terraform apply` |
| `terraform apply plan.tfplan` | Apply the plan you saved. | `terraform apply plan.tfplan` |
| `terraform destroy` | Remove everything Terraform created here. | `terraform destroy` |
| `terraform show` | Print a plan or the current state (human/JSON). | `terraform show -json plan.tfplan` |
| `terraform console` | Little calculator for Terraform expressions. | `terraform console` |
| `terraform version` | Show Terraform version. | `terraform version` |
| `terraform help` | Help for any command. | `terraform help apply` |

## Workspaces (separate states like dev/prod)
| Command | What it does | Example |
|---|---|---|
| `terraform workspace new NAME` | Create a new workspace. | `terraform workspace new dev` |
| `terraform workspace select NAME` | Switch to a workspace. | `terraform workspace select dev` |
| `terraform workspace list` | List workspaces. | `terraform workspace list` |
| `terraform workspace show` | Show current workspace. | `terraform workspace show` |

## State (what Terraform tracks)
| Command | What it does | Example |
|---|---|---|
| `terraform state list` | See everything Terraform is tracking. | `terraform state list` |
| `terraform state show ADDR` | See details for one resource. | `terraform state show aws_instance.web` |
| `terraform state mv SRC DST` | Rename/move a resource in state. | `terraform state mv aws_instance.web aws_instance.app` |
| `terraform state rm ADDR` | Stop tracking a resource (doesn’t delete in cloud). | `terraform state rm aws_eip.orphan` |
| `terraform state pull` | Download raw state to stdout. | `terraform state pull > terraform.tfstate` |
| `terraform state push` | Upload a local state (rare; be careful). | `terraform state push terraform.tfstate` |
| `terraform force-unlock LOCK_ID` | Clear a stuck state lock (last resort). | `terraform force-unlock 1234-...` |

> **Syncing state:** instead of old `terraform refresh`, use  
> `terraform plan -refresh-only` → updates state to match cloud, makes no changes.

## Import / Target / Replace
| Command / Flag | What it does | Example |
|---|---|---|
| `terraform import` | Adopt an existing thing into Terraform. | `terraform import aws_instance.web i-0123456789` |
| `-target=ADDR` | Only touch this address (use sparingly). | `terraform apply -target=aws_vpc.main` |
| `-replace=ADDR` | Recreate this resource on next apply. | `terraform apply -replace=aws_instance.web` |
| `terraform taint` / `untaint` | Legacy mark/unmark for rebuild (prefer `-replace`). | `terraform taint aws_instance.web` |

## Outputs & Modules
| Command | What it does | Example |
|---|---|---|
| `terraform output` | Print outputs (human/JSON). | `terraform output -json` |
| `terraform get` | Download modules (usually done by `init`). | `terraform get` |
| `terraform test` | Run module tests (TF ≥ 1.6). | `terraform test` |

## Providers (plugins)
| Command | What it does | Example |
|---|---|---|
| `terraform providers` | Show which providers your code needs. | `terraform providers` |
| `terraform providers lock` | Write/update `.terraform.lock.hcl`. | `terraform providers lock` |
| `terraform providers mirror DIR` | Cache provider plugins locally. | `terraform providers mirror ./mirror` |

## Terraform Cloud / Enterprise
| Command | What it does | Example |
|---|---|---|
| `terraform login` | Log in to Terraform Cloud. | `terraform login` |
| `terraform logout HOST` | Log out from a host. | `terraform logout app.terraform.io` |

## Visuals
| Command | What it does | Example |
|---|---|---|
| `terraform graph` | Draw dependency graph (Graphviz DOT). | `terraform graph > graph.dot` |
