#------------------------------------------
# Data Sources of Management Group
#------------------------------------------
data "azurerm_management_group" "mg" {
  count        = var.display_name == "root" ? 0 : 1
  display_name = var.display_name
}

data "azurerm_client_config" "current" {}

#------------------------------------------
# Policies for Management Group
#------------------------------------------
resource "azurerm_management_group_policy_assignment" "policies" {
  for_each             = var.policy
  name                 = each.value["name"]
  display_name         = each.value["display_name"]
  description          = each.value["description"]
  policy_definition_id = each.value["policy_definition_id"]
  management_group_id  = var.display_name == "root" ? "/providers/Microsoft.Management/managementGroups/${data.azurerm_client_config.current.tenant_id}" : data.azurerm_management_group.mg.0.id
  enforce              = false
  parameters = each.value["list"] == true ? jsonencode({
    (each.value["type"]) : each.value["parameters"]
    }
  ) : null
}

resource "azurerm_management_group_policy_assignment" "polcy_rg" {
  for_each             = var.policy_rg == null ? {} : var.policy_rg
  name                 = each.value["name"]
  display_name         = each.value["display_name"]
  description          = each.value["description"]
  policy_definition_id = each.value["policy_definition_id"]
  management_group_id  = var.display_name == "root" ? "/providers/Microsoft.Management/managementGroups/${data.azurerm_client_config.current.tenant_id}" : data.azurerm_management_group.mg.0.id
  enforce              = false
  parameters = each.value["list"] == true ? jsonencode({
    tagName : each.value["parameters"],
    tagValue : each.value["parameters2"]
    }
    ) : jsonencode({
      (each.value["type"]) : each.value["parameters"]
  })
}
