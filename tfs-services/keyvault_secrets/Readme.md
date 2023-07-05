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
| <a name="module_kv_secrets"></a> [kv\_secrets](#module\_kv\_secrets) | ../modules/tfs_azurerm_kv_secrets | n/a |

## Resources

No resources.

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