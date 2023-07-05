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
| <a name="module_env"></a> [env](#module\_env) | ../tfs_azurerm_truth/keyvault | n/a |
| <a name="module_hub"></a> [hub](#module\_hub) | ../tfs_azurerm_truth/keyvault | n/a |
| <a name="module_rg"></a> [rg](#module\_rg) | ../tfs_azurerm_truth/rg | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_secret.ssh_key](https://registry.terraform.io/providers/hashicorp/azurerm/3.36.0/docs/resources/key_vault_secret) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.36.0/docs/data-sources/client_config) | data source |
| [azurerm_ssh_public_key.ssh_key](https://registry.terraform.io/providers/hashicorp/azurerm/3.36.0/docs/data-sources/ssh_public_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table' | `string` | `"eastus"` | no |
| <a name="input_secret_value"></a> [secret\_value](#input\_secret\_value) | secret value for private key | `string` | `""` | no |
| <a name="input_ssh_key_map"></a> [ssh\_key\_map](#input\_ssh\_key\_map) | ssh key name | <pre>map(map(object({<br>    ssh_key_name    = string<br>    ssh_key_rg_name = string<br>  })))</pre> | <pre>{<br>  "hub": {<br>    "hub": {<br>      "ssh_key_name": "hub",<br>      "ssh_key_rg_name": "hub"<br>    }<br>  }<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to associate with resources | `any` | <pre>{<br>  "prod": {<br>    "appliance_owner": "networking",<br>    "environment": "dev",<br>    "finance_allocation": "finance_allocation",<br>    "network_segment": "c2c",<br>    "product": "speech",<br>    "product_component": "apigee",<br>    "project_owner": "speech",<br>    "risk_zone": "zone1",<br>    "type_of_appliance": "web"<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->