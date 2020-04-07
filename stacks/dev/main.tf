provider "aws" {
version = "~> 2.0"
region  = "eu-west-1"
}

module "ssm" {
name = var.name
source   = "../../modules/ssm"
value=var.value
}