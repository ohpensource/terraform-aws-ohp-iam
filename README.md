# Terraform Module Template

[![license](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/ohpensource/terraform-aws-ohp-iam/continuous-delivery)

![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/ohpensource/terraform-aws-ohp-iam)

## Maintainer

* My Team Here

## Description

Describe what your module does here.

## Modules

If you have more than one module create a modules folder and list the sub-modules here.

To auto generate terraform-docs for sub-modules add the paths to the working-dir in the ci.yaml workflow:

```(yaml)
- name: Render terraform docs inside the USAGE.md and push changes back to PR branch
        uses: terraform-docs/gh-actions@v0.10.0
        with:
          working-dir: .,modules/sub-module1-dir,modules/sub-module2-dir
          output-file: README.md
          output-method: inject
          git-push: "true"

```

## Prerequites

If there are any prerequistes to making this module work, add them here.

### Optional

* [pre-commit](https://pre-commit.com/#install)
    * Install the pre-commit hooks in the mod repo using

      ```(text)
      pre-commit install
      ```

* Python3 & pip
    * Any addtional pip modules should be added to requirements.txt

## Documentation

Describe how to use your module here.
[confluence](https://ohpendev.atlassian.net/wiki/spaces/CCE/pages/2062320795/Terraform+Modules)

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
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [null_resource.main](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dummy"></a> [dummy](#input\_dummy) | n/a | `string` | `"dummy you"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to apply to resources | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Required) Map of tags to apply to resources | `map(any)` | n/a | yes |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |

<!--- END_TF_DOCS --->
