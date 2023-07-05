locals {
  def_id = module.role_definition_id.def_id
}

module "role_definition_id" {
  source   = "../../tfs_azurerm_truth/policy_def_id"
  location = var.location
}

data "azuread_group" "ad_group" {
  count            = length(var.azuread_group_name)
  display_name     = var.azuread_group_name[count.index]
  security_enabled = true
}

data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "vm_login_role_assignment" {
  count              = length(var.azuread_group_name)
  scope              = var.subcription_scope_enable == true ? "subscriptions/${data.azurerm_client_config.current.subscription_id}" : var.scope
  role_definition_id = tostring(element(local.def_id, 0))
  principal_id       = data.azuread_group.ad_group[count.index].object_id
}




