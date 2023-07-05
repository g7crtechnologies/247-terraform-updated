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

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/network_security_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_component"></a> [component](#input\_component) | name of component | `string` | `"speech"` | no |
| <a name="input_location"></a> [location](#input\_location) | location to deploy cs | `string` | `"eastus"` | no |
| <a name="input_nic_count"></a> [nic\_count](#input\_nic\_count) | no of nic | `string` | `1` | no |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | name of nsg | `string` | `"tfs-nsg-dev-east-01"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | subnet\_id | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | resource tags | `any` | <pre>{<br>  "terraform": "1"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nic_id"></a> [nic\_id](#output\_nic\_id) | n/a |
<!-- END_TF_DOCS -->