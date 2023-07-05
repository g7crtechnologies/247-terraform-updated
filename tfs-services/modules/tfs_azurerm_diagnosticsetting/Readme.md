<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.36.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.36.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_stg"></a> [stg](#module\_stg) | ../tfs_azurerm_truth/stg_acc | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_diagnostic_setting.diagnostic](https://registry.terraform.io/providers/hashicorp/azurerm/3.36.0/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.36.0/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | location | `string` | n/a | yes |
| <a name="input_logs"></a> [logs](#input\_logs) | Logs that needs to be enabled | <pre>list(object({<br>    name           = string,<br>    enabled        = bool,<br>    retention_days = optional(number),<br>  }))</pre> | <pre>[<br>  {<br>    "enabled": false,<br>    "name": "AuditEvent",<br>    "retention_days": 0<br>  }<br>]</pre> | no |
| <a name="input_metrics"></a> [metrics](#input\_metrics) | metrics that needs to be enabled | <pre>list(object({<br>    name           = optional(string),<br>    enabled        = optional(bool),<br>    retention_days = optional(number),<br>  }))</pre> | <pre>[<br>  {<br>    "enabled": false,<br>    "name": "AllMetrics",<br>    "retention_days": 0<br>  }<br>]</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the diagnostics setting name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->