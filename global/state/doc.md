# stacks/global/state
This is the remote state which has to be created initially.
Please copy the output (remote_state_bucket, dynamodb_table) to `terraform.tfvars` to use them.
Please make sure to check in the *local state file* `terraform.tfstate` to git!

The name format of the bucket and lock table is `${var.cid}-${var.project}-${random_pet(2)}`

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account\_ids | Account IDs, which are allowed to access the resources | list | - | yes |
| aws\_region | The AWS region we are working in | string | - | yes |
| cid | The Cost center ID for tagging resources | string | - | yes |
| owner | The kreuzwerker staff owning the project | string | - | yes |
| project | The project name | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| dynamodb\_table | The DynamoDB lock table |
| id | The S3 state bucket |

## Modules

| Name | Source |
|------|-------------|
| state | git@github.com:kreuzwerker/geoengineering.git//aws/s3/state |

----
# Module: state

external module
