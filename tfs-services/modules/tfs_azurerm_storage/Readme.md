<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rg"></a> [rg](#module\_rg) | ../tfs_azurerm_truth/rg | n/a |
| <a name="module_subnet"></a> [subnet](#module\_subnet) | ../tfs_azurerm_truth/network | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_private_endpoint.endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_storage_account.storageacc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_storage_share.share](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share) | resource |

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