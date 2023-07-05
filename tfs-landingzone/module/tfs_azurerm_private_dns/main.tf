locals {
  resource_group_name = "tfs-rg-${terraform.workspace}-${local.loc_prefix}-landingzone"
}

module "rg" {
  source   = "../tfs_azurerm_truth/rg"
  location = var.location
}

resource "azurerm_private_dns_zone" "dns" {
  name                = var.private_dns_zone_name
  resource_group_name = local.resource_group_name
  tags = var.tags[terraform.workspace]
}
