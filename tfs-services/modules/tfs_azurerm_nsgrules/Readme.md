<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.37.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rg"></a> [rg](#module\_rg) | ../tfs_azurerm_truth/rg | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_rule.infra](https://registry.terraform.io/providers/hashicorp/azurerm/3.37.0/docs/resources/network_security_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The location of the vnet to create. | `string` | n/a | yes |
| <a name="input_nsg"></a> [nsg](#input\_nsg) | the name of nsg | `string` | n/a | yes |
| <a name="input_nsg_rule"></a> [nsg\_rule](#input\_nsg\_rule) | network security rules for nsg | <pre>map(object({<br>    name                         = string<br>    priority                     = number<br>    direction                    = string<br>    access                       = string<br>    protocol                     = string<br>    source_port_range            = string<br>    destination_port_range       = optional(string)<br>    destination_port_ranges      = optional(list(string))<br>    source_address_prefix        = optional(string)<br>    destination_address_prefix   = optional(string)<br>    source_address_prefixes      = optional(list(string))<br>    destination_address_prefixes = optional(list(string))<br>    description                  = optional(string)<br>  }))</pre> | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->