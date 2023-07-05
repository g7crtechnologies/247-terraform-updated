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
| [azurerm_lb_backend_address_pool.lb_backend](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_probe.lb_probe](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.lb_rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |
| [azurerm_network_interface_backend_address_pool_association.nic_pool_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_backend_address_pool_association) | resource |
| [azurerm_lb.lb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/lb) | data source |
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/network_interface) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_LbRules"></a> [LbRules](#input\_LbRules) | List containing your load balancers parameters. | `any` | n/a | yes |
| <a name="input_lb_name"></a> [lb\_name](#input\_lb\_name) | loadbalancer name | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location of the load balancer, use the RG's location if not set | `string` | n/a | yes |
| <a name="input_nic_name"></a> [nic\_name](#input\_nic\_name) | nic rg name for existing vm | `list(string)` | n/a | yes |
| <a name="input_nic_rg"></a> [nic\_rg](#input\_nic\_rg) | nic rg name for existing vm | `string` | n/a | yes |
| <a name="input_product"></a> [product](#input\_product) | Product RG name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend_id"></a> [backend\_id](#output\_backend\_id) | n/a |
| <a name="output_frontend_ip_configuration_name"></a> [frontend\_ip\_configuration\_name](#output\_frontend\_ip\_configuration\_name) | n/a |
<!-- END_TF_DOCS -->