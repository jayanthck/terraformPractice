output "dynamodb_table" {
  description = "The DynamoDB lock table"
  value       = "${module.state.dynamodb_table}"
}

output "id" {
  description = "The S3 state bucket"
  value       = "${module.state.id}"
}
