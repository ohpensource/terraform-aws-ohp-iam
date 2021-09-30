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

variable "managed_policy_arns" {
  type        = list(any)
  description = "(Optional) A list of managed IAM policy arns to attach to the user"
  default     = []
}

variable "ignore_changes_to_secrets" {
  type        = bool
  description = "Allows control over whether changes to the AccessKey/SecretKey are updated in SecretsManager"
  default     = false
}
