# Output the IAM user's name
output "iam_user_name" {
  description = "The name of the IAM user created"
  value       = module.iam_user.this_iam_user_name
}

# Output the IAM policy ARN
output "iam_policy_arn" {
  description = "The ARN of the IAM policy attached to the user"
  value       = module.iam_policy.this_iam_policy_arn
}
