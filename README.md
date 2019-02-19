  - run local install script (downloads TF if not installed, runs a `terraform init` and generates new ssh key)

  - create a terraform.tfvars file and add your AWS credentials plus anything from `config.tf` that you want to override (instance region, proxy type)

  - `terraform apply` (returns list of ip addresses)

  - when you're done, `terraform destroy`
