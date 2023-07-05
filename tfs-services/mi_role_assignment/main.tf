module "tfs_azurerm_mi_role_assignment" {
  source                   = "../modules/tfs_azurerm_mi_role_assignment"
  role_definition_name     = var.role_definition_name
  subcription_scope_enable = var.subcription_scope_enable
  scope                    = var.scope
  azuread_group_name       = var.azuread_group_name // managed identity id
  location                 = var.location
}
