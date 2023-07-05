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
| [azurerm_monitor_log_profile.profile](https://registry.terraform.io/providers/hashicorp/azurerm/3.36.0/docs/resources/monitor_log_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | location | `string` | n/a | yes |
| <a name="input_logs_profile"></a> [logs\_profile](#input\_logs\_profile) | Logs that needs to be enabled | <pre>map(object({<br>    name           = string,<br>    categories     = list(string)<br>    locations      = list(string)<br>    enabled        = bool,<br>    retention_days = optional(number),<br>  }))</pre> | <pre>{<br>  "log_profile": {<br>    "categories": [<br>      "Action",<br>      "Delete",<br>      "Write"<br>    ],<br>    "enabled": true,<br>    "locations": [<br>      "eastus",<br>      "westus",<br>      "global"<br>    ],<br>    "name": "dev",<br>    "retention_days": 365<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->