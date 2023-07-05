locals {
  location = var.location
  region   = var.location == "eastus" ? "eu" : "wu"
}

provider "azurerm" {
  alias           = "hub"
  subscription_id = "fd2d6291-f998-4e73-95d6-12dc7a0a20c8"
  features {}
}

data "azurerm_virtual_network" "Network" {
  for_each            = var.vnet_map[terraform.workspace]
  name                = terraform.workspace == "poc" ? "tfs-vnet-${terraform.workspace}-${local.region}" : "tfs-vnet-${terraform.workspace}${each.value["pci_type"]}-${local.region}"
  resource_group_name = "tfs-rg-${terraform.workspace}-${local.region}-${each.value["rg_suffix"]}"
}

data "azurerm_private_dns_resolver_dns_forwarding_ruleset" "ruleset" {
  provider            = azurerm.hub
  name                = "tfs-dns-fw-ruleset-hub-${local.region}"
  resource_group_name = "tfs-rg-hub-${local.region}-landingzone"
}

resource "azurerm_private_dns_resolver_virtual_network_link" "link" {
  for_each                  = var.vnet_map[terraform.workspace]
  name                      = terraform.workspace == "poc" ? "tfs-dns-rule-link-${terraform.workspace}-${local.region}-link" : "tfs-dns-rule-link-${terraform.workspace}${each.value["pci_type"]}-${local.region}"
  dns_forwarding_ruleset_id = data.azurerm_private_dns_resolver_dns_forwarding_ruleset.ruleset.id
  virtual_network_id        = data.azurerm_virtual_network.Network[each.key].id

}