<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.37.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_record"></a> [record](#module\_record) | ../modules/tfs_azurerm_dns_record | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_count_of_vm"></a> [count\_of\_vm](#input\_count\_of\_vm) | n/a | `any` | n/a | yes |
| <a name="input_dns_a_record_name"></a> [dns\_a\_record\_name](#input\_dns\_a\_record\_name) | n/a | `string` | n/a | yes |
| <a name="input_dns_a_record_records"></a> [dns\_a\_record\_records](#input\_dns\_a\_record\_records) | n/a | `list(string)` | n/a | yes |
| <a name="input_dns_a_record_ttl"></a> [dns\_a\_record\_ttl](#input\_dns\_a\_record\_ttl) | n/a | `string` | n/a | yes |
| <a name="input_dns_c_record_name"></a> [dns\_c\_record\_name](#input\_dns\_c\_record\_name) | n/a | `string` | n/a | yes |
| <a name="input_dns_c_record_records"></a> [dns\_c\_record\_records](#input\_dns\_c\_record\_records) | n/a | `string` | n/a | yes |
| <a name="input_dns_c_record_ttl"></a> [dns\_c\_record\_ttl](#input\_dns\_c\_record\_ttl) | n/a | `string` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | n/a | `string` | `"mydomain.com"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"eastus"` | no |
| <a name="input_product"></a> [product](#input\_product) | n/a | `string` | n/a | yes |
| <a name="input_pvt_dns_rg"></a> [pvt\_dns\_rg](#input\_pvt\_dns\_rg) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->