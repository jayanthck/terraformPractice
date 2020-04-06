# The blueprint
Use this blueprint to kickstart your terraform project.

## Setup
The relevant settings are to be set in `terraform.tfvars`, see the description in `variables.tf`; also adjust the awsu profile in `Makefile.aws.mk`

## Content
```
.
├── modules
│   └── blueprint
└── stacks
    ├── blueprint
    └── global
        └── state
```

:exclamation: When creating copies of the blueprint stacks and modules, please make sure the following files are copied as symlinks :exclamation:

- `config.tf`
- `terraform.tfvars`
- `variables.tf`


### stacks/global/state
This is the remote state which has to be created initially.
Please copy the output (remote_state_bucket, dynamodb_table) to `terraform.tfvars` to use them.
Please make sure to check in the *local state file* `terraform.tfstate` to git!

The name format of the bucket and lock table is `${var.cid}-${var.project}-${random_pet(2)}`

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account\_ids | Account IDs, which are allowed to access the resources | list | - | yes |
| aws\_region | The AWS region we are working in | string | - | yes |
| cid | The Cost center ID for tagging resources | string | - | yes |
| owner | The kreuzwerker staff owning the project | string | - | yes |
| project | The project name | string | - | yes |

#### Outputs

| Name | Description |
|------|-------------|
| dynamodb\_table | The DynamoDB lock table |
| id | The S3 state bucket |

#### Modules

| Name | Source |
|------|-------------|
| state | git@github.com:kreuzwerker/geoengineering.git//aws/s3/state |


### modules/blueprint
This is an example module for creating your own infrastructure.

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| metadata | map with standard metadata | map | `<map>` | no |

#### Outputs

| Name | Description |
|------|-------------|
| xxx | Please add a description |

### stacks/blueprint
This is an example stack, using the `modules/blueprint` module

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account\_ids | Account IDs, which are allowed to access the resources | list | - | yes |
| aws\_region | The AWS region we are working in | string | - | yes |
| cid | The Cost center ID for tagging resources | string | - | yes |
| customer | The customer name | string | - | yes |
| customer\_tag | A short version of the customer name | string | - | yes |
| dynamodb\_table | The remote state lock table (created in stacks/global/state) | string | - | yes |
| owner | The kreuzwerker staff owning the project | string | - | yes |
| project | The project name | string | - | yes |
| remote\_state\_bucket | The remote state bucket (create in stacks/global/state) | string | - | yes |

#### Outputs

| Name | Description |
|------|-------------|
| XXX\_name | Please add a description |
