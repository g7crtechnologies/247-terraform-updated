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
| <a name="module_managed_identity"></a> [managed\_identity](#module\_managed\_identity) | ../modules/tfs_azurerm_mi | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The Azure region where the managed identity will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the managed identity | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->