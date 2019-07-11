  - this requires you to have terraform installed. on osx: `brew install terraform`

  - run local install script (runs a `terraform init` and generates a new ssh key)

  - create a `terraform.tfvars` file and add your AWS credentials plus anything from `config.tf` that you want to override (instance region, proxy type, etc). this is also where you'll set your credentials, if you want to use authentication. ex: 

  ```
  AWS_ACCESS_KEY_ID="xxx"
  AWS_SECRET_ACCESS_KEY="xxx"
  AWS_INSTANCE_TYPE="t2.nano"
  INSTANCE_COUNT=10
  PROXY_USER="xxx"
  PROXY_PASSWORD="xxx"
  ```

  - `terraform apply` - creates your proxies and prints their ip addresses to stdout

  - `terraform output` - get info about your configuration

  - `terraform destroy` - tears down your instances
