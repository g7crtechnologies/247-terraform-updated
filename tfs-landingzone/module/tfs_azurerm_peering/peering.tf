locals {
  # all env vnet id and name
  source_vnet_name = terraform.workspace == "poc" ? {} : {
    (module.truth[0].vnet_c2c_name) = "c2c",
    (module.truth[0].vnet_cde_name) = "cde",
    (module.truth[0].vnet_oos_name) = "oos",
  }
  source_vnet_id = terraform.workspace == "poc" ? {} : {
    (module.truth[0].vnet_c2c) = "c2c",
    (module.truth[0].vnet_cde) = "cde",
    (module.truth[0].vnet_oos) = "oos",
  }
  poc_vnet_id = terraform.workspace == "poc" ? {
    (module.poc[0].vnet_id) = ""
  }: {}
  poc_vnet_name = terraform.workspace == "poc" ? {
    (module.poc[0].vnet_name) = ""
  }:{}
  # all environment rg name
  source_rg = terraform.workspace == "poc" ? "tfs-rg-${terraform.workspace}-${local.location_prefix}-dsg" : "tfs-rg-${terraform.workspace}-${local.location_prefix}-network"
  location_prefix = var.location == "eastus" ? "eu" : "wu"
  env_name = {
    "hub"  = "hub"
    "dev"  = "dev"
    "psr"  = "psr"
    "qa"   = "qa"
    "prod" = "prod"
    "stg"  = "stg"
    "stb"  = "stb"
    "poc"  = "poc"
  }
}
module "truth" {
  count    = terraform.workspace == "poc" ? 0 : 1
  source   = "../tfs_azurerm_truth/network"
  location = var.location
}

module "poc" {
  count    = terraform.workspace == "poc" ? 1 : 0
  source   = "../tfs_azurerm_truth/poc"
  location = var.location
}

data "azurerm_virtual_network" "hub" {
  provider            = azurerm.hub
  name                = var.location == "eastus" ? "tfs-vnet-hub-eu" : "tfs-vnet-hub-wu"
  resource_group_name = var.location == "eastus" ? "tfs-rg-hub-eu-landingzone" : "tfs-rg-hub-wu-landingzone"
}

#Creating Peering source to destination
resource "azurerm_virtual_network_peering" "peering_source_to_destination" {
  for_each                     = terraform.workspace == "poc" ? local.poc_vnet_name : local.source_vnet_name
  name                         = terraform.workspace == "poc" ? "${local.env_name[terraform.workspace]}-to-hub" : "${local.env_name[terraform.workspace]}-${each.value}-to-hub"
  resource_group_name          = local.source_rg
  virtual_network_name         = each.key
  remote_virtual_network_id    = data.azurerm_virtual_network.hub.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  use_remote_gateways          = true
}

#Creating Peering destination to source
resource "azurerm_virtual_network_peering" "peering_destination_to_source" {
  for_each                     = terraform.workspace == "poc" ? local.poc_vnet_id : local.source_vnet_id
  provider                     = azurerm.hub
  name                         = terraform.workspace == "poc" ? "hub-to-${local.env_name[terraform.workspace]}" : "hub-to-${local.env_name[terraform.workspace]}-${each.value}"
  resource_group_name          = data.azurerm_virtual_network.hub.resource_group_name
  virtual_network_name         = data.azurerm_virtual_network.hub.name
  remote_virtual_network_id    = each.key
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = true

  depends_on = [
    azurerm_virtual_network_peering.peering_source_to_destination
  ]
}

