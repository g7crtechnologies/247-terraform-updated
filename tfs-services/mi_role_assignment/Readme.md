<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.36.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tfs_azurerm_mi_role_assignment"></a> [tfs\_azurerm\_mi\_role\_assignment](#module\_tfs\_azurerm\_mi\_role\_assignment) | ../modules/tfs_azurerm_mi_role_assignment | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | location | `string` | n/a | yes |
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | list of principal id you want to assign | `string` | n/a | yes |
| <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name) | scope to assign | `list(string)` | `""` | no |
| <a name="input_scope"></a> [scope](#input\_scope) | scope to assign | `string` | `""` | no |
| <a name="input_subcription_scope_enable"></a> [subcription\_scope\_enable](#input\_subcription\_scope\_enable) | to enable the scope to subscription | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->