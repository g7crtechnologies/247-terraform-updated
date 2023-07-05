<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.lb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |
| [azurerm_subnet.hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_lbs"></a> [lbs](#input\_lbs) | List containing your load balancers. | `any` | <pre>{<br>  "qa": {<br>    "qa-cde": {<br>      "component": "audio",<br>      "pci_type": "cde",<br>      "product": "speech",<br>      "sku": "Standard"<br>    }<br>  }<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the load balancer, use the RG's location if not set | `any` | `"eastus"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to associate with resources | `any` | <pre>{<br>  "prod": {<br>    "appliance_owner": "networking",<br>    "environment": "prod",<br>    "finance_allocation": "finance_allocation",<br>    "network_segment": "c2c",<br>    "product": "speech",<br>    "project_owner": "speech",<br>    "risk_zone": "zone1",<br>    "type_of_appliance": "web"<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_id"></a> [lb\_id](#output\_lb\_id) | n/a |
| <a name="output_lb_name"></a> [lb\_name](#output\_lb\_name) | n/a |
<!-- END_TF_DOCS -->