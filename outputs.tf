# Output the IAM user's name
output "iam_user_name" {
  description = "The name of the IAM user created"
  value       = module.iam_user.iam_user_name
}

output "iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = module.iam_user.iam_user_arn
}

# Output the IAM policy ARN
output "iam_policy_arn" {
  description = "The ARN of the IAM policy attached to the user"
  value       = module.iam_policy.arn
}

output "iam_user_access_key_id" {
  description = "The access key ID"
  value       = module.iam_user.iam_access_key_id
}

output "iam_user_access_key_secret" {
  description = "The access key secret"
  value       = module.iam_user.iam_access_key_secret
  sensitive   = true
}
