<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_appgw"></a> [appgw](#module\_appgw) | ../modules/tfs_azurerm_appgw | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_appgw_name"></a> [appgw\_name](#input\_appgw\_name) | n/a | `string` | n/a | yes |
| <a name="input_backend_address_pool_name"></a> [backend\_address\_pool\_name](#input\_backend\_address\_pool\_name) | n/a | `string` | n/a | yes |
| <a name="input_backend_http_settings"></a> [backend\_http\_settings](#input\_backend\_http\_settings) | n/a | `any` | n/a | yes |
| <a name="input_frontend_ip_configuration_name"></a> [frontend\_ip\_configuration\_name](#input\_frontend\_ip\_configuration\_name) | n/a | `string` | n/a | yes |
| <a name="input_frontend_port_name1"></a> [frontend\_port\_name1](#input\_frontend\_port\_name1) | n/a | `string` | n/a | yes |
| <a name="input_gateway_confg"></a> [gateway\_confg](#input\_gateway\_confg) | n/a | `string` | n/a | yes |
| <a name="input_http_listener"></a> [http\_listener](#input\_http\_listener) | n/a | `any` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_max_capacity"></a> [max\_capacity](#input\_max\_capacity) | n/a | `string` | n/a | yes |
| <a name="input_min_capacity"></a> [min\_capacity](#input\_min\_capacity) | n/a | `string` | n/a | yes |
| <a name="input_pip_name"></a> [pip\_name](#input\_pip\_name) | n/a | `string` | n/a | yes |
| <a name="input_request_routing_rule"></a> [request\_routing\_rule](#input\_request\_routing\_rule) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->