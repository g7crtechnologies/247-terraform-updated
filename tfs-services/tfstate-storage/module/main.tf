locals {
  rg_name  = "tfs-rg-${terraform.workspace}-tfstate"
  stg_name = "tfsstg${terraform.workspace}tfstate"
  pe_name  = "tfs-pe-${local.stg_name}"
  psc_name = "tfs-psc-${local.stg_name}"
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.location
}

resource "azurerm_storage_account" "storageacc" {
  name                     = local.stg_name
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags[terraform.workspace]
}

resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storageacc.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_account_network_rules" "example" {
  storage_account_id = azurerm_storage_account.storageacc.id
  default_action     = "Allow"
  ip_rules           = var.ip_ranges
  bypass             = ["Metrics"]
}

resource "azurerm_private_endpoint" "endpoint" {
  count            = var.enable_pe == true ? 1 : 0
  name                = local.pe_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = var.subnet_id
  tags                = var.tags[terraform.workspace]

  private_service_connection {
    name                           = local.psc_name
    is_manual_connection           = false
    private_connection_resource_id = azurerm_storage_account.storageacc.id
    subresource_names              = ["blob"]
  }
}
