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
| <a name="module_hub"></a> [hub](#module\_hub) | ../modules/tfs_azurerm_truth/hub | n/a |
| <a name="module_network"></a> [network](#module\_network) | ../modules/tfs_azurerm_truth/network | n/a |
| <a name="module_nic"></a> [nic](#module\_nic) | ../modules/tfs_azurerm_nic | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_component"></a> [component](#input\_component) | name of component | `string` | `"speech"` | no |
| <a name="input_location"></a> [location](#input\_location) | location to deploy cs | `string` | `"eastus"` | no |
| <a name="input_nic_count"></a> [nic\_count](#input\_nic\_count) | no of nic | `string` | `1` | no |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | name of nsg | `string` | `"tfs-nsg-dev-east-01"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | subnet\_id | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | resource tags | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nic_id"></a> [nic\_id](#output\_nic\_id) | n/a |
<!-- END_TF_DOCS -->