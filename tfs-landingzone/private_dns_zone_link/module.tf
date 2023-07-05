module "private_link" {
  source    = "../module/tfs_azurerm_private_dns_zone_link"
  location  = var.location
  tags      = var.tags
}
