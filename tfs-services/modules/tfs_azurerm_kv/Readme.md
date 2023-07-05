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
| <a name="module_rg"></a> [rg](#module\_rg) | ../tfs_azurerm_truth/rg | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.kv](https://registry.terraform.io/providers/hashicorp/azurerm/3.36.0/docs/resources/key_vault) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.36.0/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_vault_map"></a> [key\_vault\_map](#input\_key\_vault\_map) | name of key vault | <pre>map(map(object({<br>    name        = string<br>    sku         = string<br>    key_per     = list(string)<br>    secret_per  = list(string)<br>    storage_per = list(string)<br>  })))</pre> | <pre>{<br>  "hub": {<br>    "hub": {<br>      "key_per": [<br>        "Get"<br>      ],<br>      "name": "hub",<br>      "secret_per": [<br>        "Get"<br>      ],<br>      "sku": "standard",<br>      "storage_per": [<br>        "Get"<br>      ]<br>    }<br>  }<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table' | `string` | `"eastus"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to associate with resources | `any` | <pre>{<br>  "prod": {<br>    "appliance_owner": "networking",<br>    "environment": "dev",<br>    "finance_allocation": "finance_allocation",<br>    "network_segment": "c2c",<br>    "product": "speech",<br>    "product_component": "apigee",<br>    "project_owner": "speech",<br>    "risk_zone": "zone1",<br>    "type_of_appliance": "web"<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | n/a |
<!-- END_TF_DOCS -->