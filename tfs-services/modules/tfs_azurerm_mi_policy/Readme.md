<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_policy_assignment.identity_policy_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/3.37.0/docs/resources/policy_assignment) | resource |
| [azurerm_policy_definition.identity_policy](https://registry.terraform.io/providers/hashicorp/azurerm/3.37.0/docs/resources/policy_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_policy_assignment"></a> [policy\_assignment](#input\_policy\_assignment) | n/a | <pre>list(object({<br>    name         = string<br>    parameters = string<br>  }))</pre> | n/a | yes |
| <a name="input_policy_definition"></a> [policy\_definition](#input\_policy\_definition) | n/a | <pre>list(object({<br>    name         = string<br>    display_name = string<br>    policy_type  = string<br>    mode         = string<br>    policy_rule  = string<br><br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->