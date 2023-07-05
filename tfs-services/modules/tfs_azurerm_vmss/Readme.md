<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.37.0 |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_host_info"></a> [host\_info](#module\_host\_info) | ./host_info | n/a |
| <a name="module_rg"></a> [rg](#module\_rg) | ../tfs_azurerm_truth/rg | n/a |
| <a name="module_vnet"></a> [vnet](#module\_vnet) | ../tfs_azurerm_truth/network | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine_scale_set.vmss](https://registry.terraform.io/providers/hashicorp/azurerm/3.37.0/docs/resources/linux_virtual_machine_scale_set) | resource |
| [azurerm_shared_image_version.image](https://registry.terraform.io/providers/hashicorp/azurerm/3.37.0/docs/data-sources/shared_image_version) | data source |
| [azurerm_ssh_public_key.key](https://registry.terraform.io/providers/hashicorp/azurerm/3.37.0/docs/data-sources/ssh_public_key) | data source |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.37.0/docs/data-sources/subnet) | data source |
| [template_file.datadisk](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.release_type](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.salt](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_id"></a> [backend\_id](#input\_backend\_id) | backend id of loadbalancers | `list(string)` | n/a | yes |
| <a name="input_gallery_name"></a> [gallery\_name](#input\_gallery\_name) | n/a | `string` | `"tfs-rg-dev-eu-landingzone"` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_image_rg"></a> [image\_rg](#input\_image\_rg) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_instance_config"></a> [instance\_config](#input\_instance\_config) | See tfs\_compute for documentation. | `any` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_ssh_key_name"></a> [ssh\_key\_name](#input\_ssh\_key\_name) | n/a | `string` | `"tfs-ssh-key"` | no |
| <a name="input_ssh_key_rg_name"></a> [ssh\_key\_rg\_name](#input\_ssh\_key\_rg\_name) | n/a | `string` | `"tfs-rg-dev-eu-landingzone"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_subnet_rg_name"></a> [subnet\_rg\_name](#input\_subnet\_rg\_name) | n/a | `string` | `"tfs-rg-dev-eu-landingzone"` | no |
| <a name="input_subnet_vnet_name"></a> [subnet\_vnet\_name](#input\_subnet\_vnet\_name) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to associate with resources | `any` | <pre>{<br>  "prod": {<br>    "appliance_owner": "networking",<br>    "environment": "dev",<br>    "finance_allocation": "finance_allocation",<br>    "network_segment": "c2c",<br>    "product": "speech",<br>    "product_component": "apigee",<br>    "project_owner": "speech",<br>    "risk_zone": "zone1",<br>    "type_of_appliance": "web"<br>  }<br>}</pre> | no |
| <a name="input_vmss_instances"></a> [vmss\_instances](#input\_vmss\_instances) | this variable contains all the parameters for vmss | <pre>map(object({<br>    name                   = string<br>    sku                    = string<br>    instance_count         = number<br>    username               = string<br>    auto_repair_enable     = string<br>    single_placement_group = bool<br>    caching                = string<br>    storage_account_type   = string<br>    disk_size_gb           = string<br>    overprovision          = bool<br>    upgrade_mode           = string<br>    storage_account_uri    = string<br>    identity_type          = string<br>    rule                   = string<br>    data_disk              = any<br>    subnet_id              = string<br>  }))</pre> | <pre>{<br>  "instance1": {<br>    "auto_repair_enable": false,<br>    "caching": "ReadWrite",<br>    "data_disk": {<br>      "data_disk_caching": "ReadWrite",<br>      "data_disk_create_option": "empty",<br>      "data_disk_disk_size_gb": "32",<br>      "data_disk_lun": 1,<br>      "data_disk_storage_account_type": "Standard_LRS"<br>    },<br>    "disk_size_gb": "32",<br>    "identity_type": "SystemAssigned",<br>    "instance_count": 2,<br>    "name": "my-vmss",<br>    "overprovision": true,<br>    "rule": "Default",<br>    "single_placement_group": true,<br>    "sku": "Standard_B2ms",<br>    "storage_account_type": "Standard_LRS",<br>    "storage_account_uri": "",<br>    "subnet_id": "",<br>    "upgrade_mode": "Automatic",<br>    "username": "adminuser"<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->