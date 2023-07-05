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
| <a name="module_firewall"></a> [firewall](#module\_firewall) | ../modules/tfs_azurerm_firewallrules | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_rules"></a> [app\_rules](#input\_app\_rules) | n/a | <pre>list(object({<br>    name                  = string,<br>    source_addresses      = list(string),<br>    web_categories        = list(string),<br>    source_ip_groups      = list(string),<br>    destination_addresses = list(string),<br>    destination_fqdns     = list(string),<br>    protocols = list(object({<br>      type = string<br>      port = number<br>    }))<br>  }))</pre> | `null` | no |
| <a name="input_application_rule_collections"></a> [application\_rule\_collections](#input\_application\_rule\_collections) | Create a application rule collection | <pre>list(object({<br>    name     = string,<br>    priority = number,<br>    action   = string,<br>  }))</pre> | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table' | `string` | `""` | no |
| <a name="input_nat_rule_collections"></a> [nat\_rule\_collections](#input\_nat\_rule\_collections) | Create a nat rule collection | <pre>list(object({<br>    name     = string,<br>    priority = number,<br>    action   = string,<br>  }))</pre> | `null` | no |
| <a name="input_nat_rules"></a> [nat\_rules](#input\_nat\_rules) | n/a | <pre>list(object({<br>    name                  = string,<br>    source_addresses      = list(string),<br>    destination_ports     = list(string),<br>    source_ip_groups      = list(string),<br>    destination_addresses = string,<br>    translated_port       = string,<br>    translated_address    = string,<br>    protocols             = list(string)<br>  }))</pre> | `null` | no |
| <a name="input_network_rule_collections"></a> [network\_rule\_collections](#input\_network\_rule\_collections) | Create a network rule collection | <pre>list(object({<br>    name     = string,<br>    priority = number,<br>    action   = string,<br>  }))</pre> | `null` | no |
| <a name="input_network_rules"></a> [network\_rules](#input\_network\_rules) | n/a | <pre>list(object({<br>    name                  = string,<br>    source_addresses      = list(string),<br>    source_ip_groups      = list(string),<br>    destination_ports     = list(string),<br>    destination_addresses = list(string),<br>    destination_ip_groups = list(string),<br>    destination_fqdns     = list(string),<br>    protocols             = list(string)<br>  }))</pre> | `null` | no |
| <a name="input_priority"></a> [priority](#input\_priority) | infrastructure name | `number` | n/a | yes |
| <a name="input_public_ip_names"></a> [public\_ip\_names](#input\_public\_ip\_names) | Public ips is a list of ip names that are connected to the firewall. At least one is required. | `list(string)` | <pre>[<br>  "fw-public"<br>]</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->