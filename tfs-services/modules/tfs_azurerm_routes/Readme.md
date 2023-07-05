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
| [azurerm_route.routes](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_routes"></a> [routes](#input\_routes) | n/a | <pre>map(map(object({<br>    name                   = string<br>    address_prefix         = string<br>    next_hop_type          = string<br>    next_hop_in_ip_address = string<br>    route_table_name       = string<br>  })))</pre> | <pre>{<br>  "hub": {<br>    "c2c": {<br>      "address_prefix": "0.0.0.0/0",<br>      "name": "route-01",<br>      "next_hop_in_ip_address": "10.88.48.4",<br>      "next_hop_type": "VirtualAppliance",<br>      "route_table_name": "tfs-rt-hub-eu-speech"<br>    }<br>  },<br>  "prod": {<br>    "c2c": {<br>      "address_prefix": "0.0.0.0/0",<br>      "name": "route-01",<br>      "next_hop_in_ip_address": "10.88.48.4",<br>      "next_hop_type": "VirtualAppliance",<br>      "route_table_name": "tfs-rt-prod-c2c-eu-speech"<br>    }<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->