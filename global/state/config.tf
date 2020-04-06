// all AWS provisioning providers should be initialized in here
provider "aws" {
  region              = "${var.aws_region}"
  allowed_account_ids = "${var.account_ids}"
  version             = "~> 1.17"
}

// please use eg. tfenv to manage multiple terraform versions
// https://github.com/Zordrak/tfenv
terraform {
  required_version = "0.11.10"
}
