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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_lbs"></a> [lbs](#input\_lbs) | List containing your load balancers. | `any` | <pre>{<br>  "qa": {<br>    "qa-cde": {<br>      "backend_pools": {<br>        "pool1": {<br>          "vm1": {<br>            "ip_address": "10.0.0.1",<br>            "port": 8080<br>          }<br>        },<br>        "pool2": {<br>          "vm2": {<br>            "ip_address": "10.0.0.2",<br>            "port": 8080<br>          }<br>        }<br>      },<br>      "component": "audio",<br>      "pci_type": "cde",<br>      "probes": {<br>        "probe1": {<br>          "healthy_threshold": 2,<br>          "interval": 10,<br>          "path": "/health",<br>          "port": 80,<br>          "protocol": "HTTP",<br>          "status_codes": "200-299",<br>          "timeout": 5,<br>          "unhealthy_threshold": 3<br>        }<br>      },<br>      "product": "speech",<br>      "rules": {<br>        "rule1": {<br>          "backend_pool_name": "pool1",<br>          "backend_port": 8080,<br>          "frontend_port": 80,<br>          "probe_name": "probe1",<br>          "protocol": "Tcp"<br>        },<br>        "rule2": {<br>          "backend_pool_name": "pool2",<br>          "backend_port": 8080,<br>          "frontend_port": 80,<br>          "probe_name": "probe1",<br>          "protocol": "Tcp"<br>        }<br>      },<br>      "sku": "Standard"<br>    }<br>  }<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the load balancer, use the RG's location if not set | `any` | `"eastus"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to associate with resources | `any` | <pre>{<br>  "prod": {<br>    "appliance_owner": "networking",<br>    "environment": "prod",<br>    "finance_allocation": "finance_allocation",<br>    "network_segment": "c2c",<br>    "product": "speech",<br>    "project_owner": "speech",<br>    "risk_zone": "zone1",<br>    "type_of_appliance": "web"<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_id"></a> [lb\_id](#output\_lb\_id) | n/a |
| <a name="output_lb_name"></a> [lb\_name](#output\_lb\_name) | n/a |
<!-- END_TF_DOCS -->