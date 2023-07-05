<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.37.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_custom_role"></a> [custom\_role](#module\_custom\_role) | ../modules/tfs_azurerm_compute/iam_roles | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | location | `string` | n/a | yes |
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | list of principal id you want to assign | `list(string)` | <pre>[<br>  "7c4b947d-25ef-46fd-ad99-39fa549587d2"<br>]</pre> | no |
| <a name="input_scope"></a> [scope](#input\_scope) | scope to assign | `string` | `""` | no |
| <a name="input_subcription_scope_enable"></a> [subcription\_scope\_enable](#input\_subcription\_scope\_enable) | to enable the scope to subscription | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->