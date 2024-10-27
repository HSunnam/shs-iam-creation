variable "password_length" {
  default = 10
  type = number
  description = "The Length of the Password"
}

variable "force_destroy" {
  type = bool
  default = true
}

variable "password_reset_required" {
    type = bool
    default = false
}

variable "create_iam_user_login_profile" {
    type = bool
    default = true
}

variable "create_iam_access_key" {
    type = bool
    default = true
}