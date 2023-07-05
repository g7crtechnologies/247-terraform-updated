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
| <a name="module_shared_image_gallery"></a> [shared\_image\_gallery](#module\_shared\_image\_gallery) | ../modules/tfs_azurerm_shared_img_gal | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | description about shared gallery | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure region where resources will be deployed. | `string` | n/a | yes |
| <a name="input_shared_image_gallery"></a> [shared\_image\_gallery](#input\_shared\_image\_gallery) | The name of the shared image gallery | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->