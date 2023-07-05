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
| <a name="module_hub"></a> [hub](#module\_hub) | ../modules/tfs_azurerm_truth/hub | n/a |
| <a name="module_network"></a> [network](#module\_network) | ../modules/tfs_azurerm_truth/network | n/a |
| <a name="module_storage"></a> [storage](#module\_storage) | ../modules/tfs_azurerm_storage | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_containers"></a> [containers](#input\_containers) | name of containers | `any` | n/a | yes |
| <a name="input_enable_con"></a> [enable\_con](#input\_enable\_con) | true / false value to enable or disable containers | `bool` | n/a | yes |
| <a name="input_enable_fs"></a> [enable\_fs](#input\_enable\_fs) | true / false value to enable or disable file system | `bool` | n/a | yes |
| <a name="input_enable_pe"></a> [enable\_pe](#input\_enable\_pe) | true / false value to enable or disable private endpoint | `bool` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment | `any` | n/a | yes |
| <a name="input_fileshare"></a> [fileshare](#input\_fileshare) | name of fileshare | `any` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | desired locations for resources | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | subnet id for private endpoint | `any` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | list of subnet ids for network rules | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | required tags for resource | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_stg_acc_id"></a> [stg\_acc\_id](#output\_stg\_acc\_id) | n/a |
<!-- END_TF_DOCS -->