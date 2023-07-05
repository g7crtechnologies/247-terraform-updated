module "custom_role" {
  source                   = "../modules/tfs_azurerm_compute/iam_roles"
  azuread_group_name       = var.azuread_group_name
  location                 = var.location
  scope                    = var.scope
  subcription_scope_enable = var.subcription_scope_enable
}
