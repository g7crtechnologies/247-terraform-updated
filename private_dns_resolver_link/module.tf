module "private_dns_resolver_link" {
  source   = "../module/tfs_azurerm_private_dns_resolver_link"
  location = var.location
  vnet_map = var.vnet_map
}

