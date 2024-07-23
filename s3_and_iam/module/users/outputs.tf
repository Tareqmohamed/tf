output "user_name" {
  value       = aws_iam_user.s3_users
  description = "IAM user name"
}

output "user_arn" {
  value       = aws_iam_user.s3_users.arn
  description = "The ARN assigned by AWS for this user"
}

output "access_key_id" {
  value       = aws_iam_access_key.s3_users_ak.id
  description = "The access key ID"
}

output "secret_access_key" {
  sensitive   = true
  value       = aws_iam_access_key.s3_users_ak.secret
  description = "The secret access key. This will be written to the state file in plain-text"
}