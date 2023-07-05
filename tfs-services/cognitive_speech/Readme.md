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
| <a name="module_cognitive_speech"></a> [cognitive\_speech](#module\_cognitive\_speech) | ../modules/tfs_azurerm_cs | n/a |

## Resources

No resources.

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