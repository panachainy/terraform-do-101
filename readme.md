# terraform do 101

```sh
Main commands:
  init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure
```

## Prerequisites

- use `DIGITALOCEAN_ACCESS_TOKEN` to connect digital ocean
- run `terraform init` when first time

## Plan & Apply

```sh
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"
```
