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
| <a name="module_lb"></a> [lb](#module\_lb) | ../modules/tfs_azurerm_lb | n/a |
| <a name="module_lb_rule"></a> [lb\_rule](#module\_lb\_rule) | ../modules/tfs_azurerm_lbrules | n/a |
| <a name="module_vmss"></a> [vmss](#module\_vmss) | ../modules/tfs_azurerm_vmss | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_LbRules"></a> [LbRules](#input\_LbRules) | List containing your load balancers parameters. | `any` | n/a | yes |
| <a name="input_gallery_name"></a> [gallery\_name](#input\_gallery\_name) | n/a | `string` | `"tfs-rg-dev-eu-landingzone"` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_image_rg"></a> [image\_rg](#input\_image\_rg) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_instance_config"></a> [instance\_config](#input\_instance\_config) | See tfs\_compute for documentation. | `any` | n/a | yes |
| <a name="input_lb_creation"></a> [lb\_creation](#input\_lb\_creation) | true and false value to create loadbalancer or not | `bool` | n/a | yes |
| <a name="input_lb_name"></a> [lb\_name](#input\_lb\_name) | Location of the load balancer, use the RG's location if not set | `string` | n/a | yes |
| <a name="input_lbs"></a> [lbs](#input\_lbs) | List containing your load balancers. | `any` | <pre>{<br>  "prod": {<br>    "prod-c2c": {<br>      "description": "aiva",<br>      "name": "prod-c2c"<br>    },<br>    "prod-cde": {<br>      "description": "aiva",<br>      "name": "prod-cde"<br>    },<br>    "prod-oos": {<br>      "description": "aiva",<br>      "name": "prod-oos"<br>    }<br>  }<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix applied on the load balancer resources names. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | SKU of the load balancer. | `any` | `"Standard"` | no |
| <a name="input_ssh_key_name"></a> [ssh\_key\_name](#input\_ssh\_key\_name) | n/a | `string` | `"tfs-ssh-key"` | no |
| <a name="input_ssh_key_rg_name"></a> [ssh\_key\_rg\_name](#input\_ssh\_key\_rg\_name) | n/a | `string` | `"tfs-rg-dev-eu-landingzone"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_subnet_rg_name"></a> [subnet\_rg\_name](#input\_subnet\_rg\_name) | n/a | `string` | `"tfs-rg-dev-eu-landingzone"` | no |
| <a name="input_subnet_vnet_name"></a> [subnet\_vnet\_name](#input\_subnet\_vnet\_name) | n/a | `string` | `"tfs-vnet-dev-cde-eu-speech"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to associate with resources | `any` | <pre>{<br>  "prod": {<br>    "appliance_owner": "networking",<br>    "environment": "dev",<br>    "finance_allocation": "finance_allocation",<br>    "network_segment": "c2c",<br>    "product": "speech",<br>    "product_component": "apigee",<br>    "project_owner": "speech",<br>    "risk_zone": "zone1",<br>    "type_of_appliance": "web"<br>  }<br>}</pre> | no |
| <a name="input_vmss_instances"></a> [vmss\_instances](#input\_vmss\_instances) | this variable contains all the parameters for vmss | <pre>map(object({<br>    name                   = string<br>    sku                    = string<br>    instance_count         = number<br>    username               = string<br>    auto_repair_enable     = string<br>    single_placement_group = bool<br>    caching                = string<br>    storage_account_type   = string<br>    disk_size_gb           = string<br>    overprovision          = bool<br>    upgrade_mode           = string<br>    storage_account_uri    = string<br>    identity_type          = string<br>    rule                   = string<br>    subnet_id              = string<br>    data_disk              = any<br>  }))</pre> | <pre>{<br>  "instance1": {<br>    "auto_repair_enable": false,<br>    "caching": "ReadWrite",<br>    "data_disk": {<br>      "data_disk_caching": "ReadWrite",<br>      "data_disk_create_option": "empty",<br>      "data_disk_disk_size_gb": "32",<br>      "data_disk_lun": 1,<br>      "data_disk_storage_account_type": "Standard_LRS"<br>    },<br>    "disk_size_gb": "32",<br>    "identity_type": "SystemAssigned",<br>    "instance_count": 2,<br>    "name": "my-vmss",<br>    "overprovision": true,<br>    "rule": "Default",<br>    "single_placement_group": true,<br>    "sku": "Standard_B2ms",<br>    "storage_account_type": "Standard_LRS",<br>    "storage_account_uri": "",<br>    "subnet_id": "",<br>    "upgrade_mode": "Automatic",<br>    "username": "adminuser"<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->