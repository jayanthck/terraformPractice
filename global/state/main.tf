/**
# stacks/global/state
This is the remote state which has to be created initially.
Please copy the output (remote_state_bucket, dynamodb_table) to `terraform.tfvars` to use them.
Please make sure to check in the *local state file* `terraform.tfstate` to git!

The name format of the bucket and lock table is `${var.cid}-${var.project}-${random_pet(2)}`

*/

module "state" {
  cid         = "${var.cid}"
  environment = "${terraform.workspace}"
  owner       = "${var.owner}"
  project     = "${var.project}"

  source = "git@github.com:kreuzwerker/geoengineering.git//aws/s3/state"
}
