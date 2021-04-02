## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_iam_access_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) |
| [aws_iam_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) |
| [aws_iam_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) |
| [aws_iam_user_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) |
| [aws_secretsmanager_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) |
| [aws_secretsmanager_secret_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| iam\_user\_name | (Required) IAM user name | `string` | n/a | yes |
| tags | (Required) Tags to apply to resources | `map(any)` | n/a | yes |
| attach\_user\_policy | Boolean - attach iam policy to user | `bool` | `false` | no |
| create\_secret | Boolean - create secret manager resource for Access/Secret keys | `bool` | `false` | no |
| iam\_user\_policy | (Optional) IAM policy to attach to user | `string` | `null` | no |
| managed\_policy\_arns | (Optional) A list of managed IAM policy arns to attach to the user | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
| name | n/a |
| unique\_id | n/a |
