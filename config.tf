variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

variable "INSTANCE_COUNT"    { default = 5 }
variable "INSTANCE_TYPE"     { default = "t2.micro" }
variable "INSTANCE_REGION"   { default = "us-east-1" }
variable "INSTANCE_AMI"      { default = "ami-a4dc46db" }
variable "INSTANCE_USERNAME" { default = "ubuntu" }

variable "PROXY_TYPE"      { default = "http" }
variable "PROXY_PORT"      { default = 69696 }
variable "PROXY_USER"      { default="" }
variable "PROXY_PASSWORD"  { default="" }
