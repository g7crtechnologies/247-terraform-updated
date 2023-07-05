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
| <a name="module_lb_rules"></a> [lb\_rules](#module\_lb\_rules) | ../modules/tfs_azurerm_lbrules | n/a |

## Resources

No resources.

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

No outputs.
<!-- END_TF_DOCS -->