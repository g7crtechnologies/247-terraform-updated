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
| [azurerm_cognitive_account.cognitive](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cognitive_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | name of cognitive speech account | `string` | `"tfs-cs-hub-eu-speech"` | no |
| <a name="input_kind"></a> [kind](#input\_kind) | Specifies the type of Cognitive Service Account | `string` | `"SpeechServices"` | no |
| <a name="input_location"></a> [location](#input\_location) | location to deploy cs | `string` | `"eastus"` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | Specifies the SKU Name for this Cognitive Service Account | `string` | `"S0"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | resource tags | `map(string)` | <pre>{<br>  "terraform": "1"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
<!-- END_TF_DOCS -->