variable "account_ids" {
  description = "Account IDs, which are allowed to access the resources"
  type        = "list"
}

variable "aws_region" {
  description = "The AWS region we are working in"
}

variable "cid" {
  description = "The Cost center ID for tagging resources"
}

variable "customer" {
  description = "The customer name"
}

variable "customer_tag" {
  description = "A short version of the customer name"
}

variable "dynamodb_table" {
  description = "The remote state lock table (created in stacks/global/state)"
}

variable "owner" {
  description = "The kreuzwerker staff owning the project"
}

variable "project" {
  description = "The project name"
}

variable "remote_state_bucket" {
  description = "The remote state bucket (create in stacks/global/state)"
}
