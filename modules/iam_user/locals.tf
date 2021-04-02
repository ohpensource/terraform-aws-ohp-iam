locals {
  create_secret      = var.create_secret ? 1 : 0
  attach_user_policy = var.attach_user_policy ? 1 : 0
}
