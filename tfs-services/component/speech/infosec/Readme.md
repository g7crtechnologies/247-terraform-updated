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
| <a name="module_lb"></a> [lb](#module\_lb) | ../../../modules/tfs_azurerm_lb | n/a |
| <a name="module_lb_rule"></a> [lb\_rule](#module\_lb\_rule) | ../../../modules/tfs_azurerm_lbrules | n/a |
| <a name="module_vm"></a> [vm](#module\_vm) | ../../../modules/tfs_azurerm_compute | n/a |
| <a name="module_vnet"></a> [vnet](#module\_vnet) | ../../../modules/tfs_azurerm_truth/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_config"></a> [instance\_config](#input\_instance\_config) | See tfs\_compute for documentation. | `map` | <pre>{<br>  "LbRules": {<br>    "lbrules1": {<br>      "Id": "1",<br>      "backend_port": "80",<br>      "lb_key": "lb1",<br>      "lb_name": "tfs-ilb-infosec-eu-speech",<br>      "lb_port": "80",<br>      "load_distribution": "SourceIPProtocol",<br>      "pci": "cde",<br>      "probe_port": "80",<br>      "probe_protocol": "Http",<br>      "request_path": "/",<br>      "skey": "dev",<br>      "vnet_name": "tfs-vnet-dev-cde-eu-speech"<br>    }<br>  },<br>  "admin_username": "azureadmin",<br>  "caching_type": "ReadWrite",<br>  "component": "speech",<br>  "create_option": "FromImage",<br>  "disk_count": 1,<br>  "enable_lb": false,<br>  "enable_pip": false,<br>  "enable_proximity_placement_group": false,<br>  "enable_zone": false,<br>  "fileshare_name": [<br>    ""<br>  ],<br>  "image_gallery_name": "rockylinux9",<br>  "image_name": "rockylinux9",<br>  "image_resource_group_name": "tfs-rg-hub-eu-landingzone",<br>  "image_version": "1.0.1",<br>  "increase_nic": false,<br>  "lb_creation": false,<br>  "lb_name": "tfs-ilb-infosec-eu-speech",<br>  "lbs": {<br>    "dev": {<br>      "dev-cde": {<br>        "component": "infosec",<br>        "pci_type": "cde",<br>        "product": "speech",<br>        "sku": "Standard"<br>      }<br>    }<br>  },<br>  "location": "eastus",<br>  "managed_disk_type": "Standard_LRS",<br>  "mount_list": [<br>    "/var/tellme"<br>  ],<br>  "nic_id": "",<br>  "nic_name": null,<br>  "nic_rg": null,<br>  "offer": "CentOS",<br>  "os_disk_size": "50",<br>  "pip_count": null,<br>  "prefix": "tfs-ilb",<br>  "azuread_group_name": [<br>    "az-dev-speech@247.ai"<br>  ],<br>  "private_ip_address_alloc": "Dynamic",<br>  "publisher": "OpenLogic",<br>  "rg_suffix": "speech",<br>  "sku": "7_9-gen2",<br>  "tags": {<br>    "dev": {<br>      "appliance_owner": "networking",<br>      "environment": "dev",<br>      "finance_allocation": "finance_allocation",<br>      "network_segment": "cde",<br>      "product": "speech",<br>      "product_component": "infosec",<br>      "project_owner": "speech",<br>      "risk_zone": "zone1",<br>      "type_of_appliance": "web"<br>    }<br>  },<br>  "version": "latest",<br>  "vm_availability_zone": [<br>    "1"<br>  ],<br>  "vm_count": 2,<br>  "vm_size": "Standard_DS1_v2"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->