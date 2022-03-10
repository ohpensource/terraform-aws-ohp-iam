resource "aws_iam_access_key" "main" {
  user = aws_iam_user.main.name
}

resource "aws_iam_user" "main" {
  name = var.iam_user_name
  tags = merge(
    var.tags,
    tomap(
      { "Name" = var.iam_user_name }
    )
  )
}

resource "aws_iam_user_policy" "main" {
  count = local.attach_user_policy
  name  = "${aws_iam_user.main.name}-policy"
  user  = aws_iam_user.main.name

  policy = var.iam_user_policy
}

resource "aws_iam_user_policy_attachment" "main" {
  count      = length(var.managed_policy_arns)
  user       = aws_iam_user.main.name
  policy_arn = var.managed_policy_arns[count.index]
}

resource "aws_secretsmanager_secret" "main" {
  count       = local.create_secret
  name        = aws_iam_user.main.name
  description = "${aws_iam_user.main.name} Access/Secret keys"
  tags = merge(
    var.tags,
    tomap(
      { "Name" = aws_iam_user.main.name }
    )
  )
}

resource "aws_secretsmanager_secret_version" "main" {
  count     = local.create_secret
  secret_id = aws_secretsmanager_secret.main.*.id[count.index]
  secret_string = jsonencode({
    AccessKey = aws_iam_access_key.main.id
    SecretKey = aws_iam_access_key.main.secret
  })

  # dynamic "lifecycle" {
  #   for_each = var.ignore_changes_to_secrets ? [1] : []
  #   content {
  #     lifecycle {
  #       ignore_changes = [secret_string]
  #     }
  #   }
  # }
}



