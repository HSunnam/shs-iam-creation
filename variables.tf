variable "password_length" {
  default = 10
  type = number
  description = "The Length of the Password"
}

variable "force_destroy" {
  type = bool
  default = false
}

variable "password_reset_required" {
    type = bool
    default = false
}