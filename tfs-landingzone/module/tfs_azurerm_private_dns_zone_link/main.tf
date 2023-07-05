locals {
  domain_name = "azcloud.247-inc.net"
  vnet_ids = terraform.workspace == "hub" ? {} : {
    c2c = (module.network.vnet_c2c)
    cde = (module.network.vnet_cde)
    oos = (module.network.vnet_oos)
  }
  loc_prefix = var.location == "eastus" ? "eu" : "wu"
  vnet_id_hub = {
    "hub" = (data.azurerm_virtual_network.hub.id)
  }
}

module "network" {
  count    = terraform.workspace == "hub" ? 0 : 1
  source   = "../tfs_azurerm_truth/network"
  location = var.location
}

data "azurerm_virtual_network" "hub" {
  provider            = azurerm.hub
  name                = var.location == "eastus" ? "tfs-vnet-hub-eu-speech" : "tfs-vnet-hub-wu-speech"
  resource_group_name = var.location == "eastus" ? "tfs-rg-hub-eu-landingzone" : "tfs-rg-hub-wu-landingzone"
}

module "rg" {
  source   = "../tfs_azurerm_truth/rg"
  location = var.location
}

resource "azurerm_private_dns_zone_virtual_network_link" "link" {
  provider              = azurerm.hub
  for_each              = terraform.workspace == "hub" ? local.vnet_id_hub : local.vnet_ids
  name                  = terraform.workspace == "hub" ? lower("tfs-dns-link-${terraform.workspace}-${local.loc_prefix}-speech") : lower("tfs-dns-link-${terraform.workspace}-${each.key}-${local.loc_prefix}-speech")
  resource_group_name   = "tfs-rg-hub-eu-landingzone"
  private_dns_zone_name = local.domain_name
  virtual_network_id    = each.value
  registration_enabled  = true
  tags                  = var.tags[terraform.workspace]
}
