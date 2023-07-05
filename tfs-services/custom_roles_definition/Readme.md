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
| <a name="module_custom_role"></a> [custom\_role](#module\_custom\_role) | ../modules/tfs_azurerm_custom_role | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_roles"></a> [custom\_roles](#input\_custom\_roles) | map of object type variable for custom role values | <pre>map(object({<br>    name        = string<br>    description = string<br>    action      = list(string)<br>    data_action = list(string)<br>  }))</pre> | <pre>{<br>  "custom_policy": {<br>    "action": [<br>      "Microsoft.Compute/virtualMachines/restart/action",<br>      "Microsoft.Compute/virtualMachines/write",<br>      "Microsoft.Compute/virtualMachines/start/action",<br>      "Microsoft.Compute/virtualMachines/poweroff/action",<br>      "Microsoft.Compute/virtualMachines/read",<br>      "Microsoft.Authorization/roleAssignments/read",<br>      "Microsoft.Authorization/roleAssignments/write",<br>      "Microsoft.Support/supportTickets/read",<br>      "Microsoft.Support/supportTickets/write",<br>      "Microsoft.Compute/virtualMachines/read",<br>      "microsoft.network/virtualnetworkgateways/connections/read",<br>      "Microsoft.Authorization/policyDefinitions/read",<br>      "Microsoft.Resources/subscriptions/resourceGroups/read",<br>      "Microsoft.Resources/subscriptions/resourceGroups/list",<br>      "Microsoft.Resources/subscriptions/read",<br>      "Microsoft.Resources/subscriptions/resourceGroups/read",<br>      "Microsoft.Consumption/usageDetails/read",<br>      "Microsoft.Resources/subscriptions/providers/read",<br>      "Microsoft.Resources/subscriptions/providers/read"<br>    ],<br>    "data_action": [<br>      "Microsoft.Compute/virtualMachines/login",<br>      "Microsoft.Compute/virtualMachines/loginAsAdmin/action"<br>    ],<br>    "description": "Allows users to manage compute instances and service accounts",<br>    "name": "my-policy"<br>  }<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | location | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `any` | <pre>{<br>  "dev": "f63b58a1-f8a2-4d25-8dac-4d38aa90a810",<br>  "hub": "fd2d6291-f998-4e73-95d6-12dc7a0a20c8",<br>  "prod": "16d401c3-90cd-466a-a075-27c333d16bce",<br>  "psr": "f55584c8-fc18-47da-bf63-75f4d3951ae3",<br>  "qa": "b88a3954-17c7-4576-8d74-586ea43d7d2d",<br>  "stg": "a98702d2-48f7-4aba-9fe6-b568d7487210"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_def_id"></a> [def\_id](#output\_def\_id) | n/a |
<!-- END_TF_DOCS -->