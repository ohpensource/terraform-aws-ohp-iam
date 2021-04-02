variable "iam_user_name" {
  type        = string
  description = "(Required) IAM user name"
}

variable "iam_user_policy" {
  type        = string
  description = "(Optional) IAM policy to attach to user"
  default     = null
}

variable "attach_user_policy" {
  type        = bool
  description = "Boolean - attach iam policy to user"
  default     = false
}

variable "tags" {
  type        = map(any)
  description = "(Required) Tags to apply to resources"
}

variable "create_secret" {
  type        = bool
  description = "Boolean - create secret manager resource for Access/Secret keys"
  default     = false
}
