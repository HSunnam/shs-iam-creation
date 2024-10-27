
# Create IAM user
module "iam_user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"

  name                    = local.iam_user
  force_destroy           = var.force_destroy
  password_length         = var.password_length
  password_reset_required = var.password_reset_required
  create_iam_user_login_profile = var.create_iam_user_login_profile  # Creates console access
  create_iam_access_key        = var.create_iam_access_key   # Creates programmatic access
}

# Create IAM policy
module "iam_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"

  name        = local.policy_name
  path        = "/"
  description = "Admin Privileges"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
        "Effect": "Allow",
        "Action": "*",
        "Resource": "*"
    }
  ]
}
EOF
}

# Attach IAM policy to the IAM user
resource "aws_iam_user_policy_attachment" "admin_policy_attachment" {
  user       = module.iam_user.iam_user_name
  policy_arn = module.iam_policy.arn

  depends_on = [ module.iam_user,
    module.iam_policy ]
}
