# Terraform Module - IAM User

## Usage

<!--- BEGIN_TF_DOCS --->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_iam_user_policy_attachment.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_secretsmanager_secret.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attach_user_policy"></a> [attach\_user\_policy](#input\_attach\_user\_policy) | Boolean - attach iam policy to user | `bool` | `false` | no |
| <a name="input_create_secret"></a> [create\_secret](#input\_create\_secret) | Boolean - create secret manager resource for Access/Secret keys | `bool` | `false` | no |
| <a name="input_iam_user_name"></a> [iam\_user\_name](#input\_iam\_user\_name) | (Required) IAM user name | `string` | n/a | yes |
| <a name="input_iam_user_policy"></a> [iam\_user\_policy](#input\_iam\_user\_policy) | (Optional) IAM policy to attach to user | `string` | `null` | no |
| <a name="input_ignore_changes_to_secrets"></a> [ignore\_changes\_to\_secrets](#input\_ignore\_changes\_to\_secrets) | Allows control over whether changes to the AccessKey/SecretKey are updated in SecretsManager | `bool` | `false` | no |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | (Optional) A list of managed IAM policy arns to attach to the user | `list(any)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Required) Tags to apply to resources | `map(any)` | n/a | yes |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_unique_id"></a> [unique\_id](#output\_unique\_id) | n/a |

<!--- END_TF_DOCS --->
