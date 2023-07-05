<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_azurerm.hub"></a> [azurerm.hub](#provider\_azurerm.hub) | n/a |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_host_info"></a> [host\_info](#module\_host\_info) | ./host_info | n/a |
| <a name="module_poc"></a> [poc](#module\_poc) | ../tfs_azurerm_truth/poc | n/a |
| <a name="module_record"></a> [record](#module\_record) | ../tfs_azurerm_dns_record | n/a |
| <a name="module_rg"></a> [rg](#module\_rg) | ../tfs_azurerm_truth/rg | n/a |
| <a name="module_role_assignment"></a> [role\_assignment](#module\_role\_assignment) | ./iam_roles | n/a |
| <a name="module_vnet"></a> [vnet](#module\_vnet) | ../tfs_azurerm_truth/network | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_backend_address_pool_association.nic_pool_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_backend_address_pool_association) | resource |
| [azurerm_proximity_placement_group.appgrp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/proximity_placement_group) | resource |
| [azurerm_public_ip.pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_virtual_machine_data_disk_attachment.vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_data_disk_attachment) | resource |
| [azurerm_virtual_machine_extension.linuxlogin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_extension) | resource |
| [azurerm_managed_disk.existing_disk](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/managed_disk) | data source |
| [azurerm_shared_image_version.image](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/shared_image_version) | data source |
| [azurerm_ssh_public_key.ssh_key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/ssh_public_key) | data source |
| [template_file.datadisk](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.release_type](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.salt](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_id"></a> [backend\_id](#input\_backend\_id) | backend pool id | `list(string)` | n/a | yes |
| <a name="input_enable_lb"></a> [enable\_lb](#input\_enable\_lb) | Location of the load balancer, use the RG's location if not set | `bool` | n/a | yes |
| <a name="input_enable_pip"></a> [enable\_pip](#input\_enable\_pip) | to enable the pip for some component | `bool` | n/a | yes |
| <a name="input_fileshare_name"></a> [fileshare\_name](#input\_fileshare\_name) | list of fileshares for components | `list(string)` | n/a | yes |
| <a name="input_frontend_ip_configuration_name"></a> [frontend\_ip\_configuration\_name](#input\_frontend\_ip\_configuration\_name) | frontend\_ip\_configuration\_name id | `list(string)` | n/a | yes |
| <a name="input_increase_nic"></a> [increase\_nic](#input\_increase\_nic) | to create more nic ids | `bool` | n/a | yes |
| <a name="input_instance_config"></a> [instance\_config](#input\_instance\_config) | See tfs\_compute for documentation. | `any` | n/a | yes |
| <a name="input_mount_list"></a> [mount\_list](#input\_mount\_list) | mount list for disk | `list(string)` | n/a | yes |
| <a name="input_nic_id"></a> [nic\_id](#input\_nic\_id) | list of nic ids | `any` | n/a | yes |
| <a name="input_pip_count"></a> [pip\_count](#input\_pip\_count) | pip count | `string` | n/a | yes |
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | list of principal id you want to assign | `list(string)` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | app subnet id for c2c ,cde, oos vnet | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->