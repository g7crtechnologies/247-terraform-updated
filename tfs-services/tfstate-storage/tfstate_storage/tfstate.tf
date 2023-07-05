module "storage_tfstate" {
  source                   = "../module"
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  container_name           = var.container_name
  container_access_type    = var.container_access_type
  enable_pe                = var.enable_pe
  ip_ranges                = var.ip_ranges
  subnet_id                = var.subnet_id
  tags                     = var.tags
}
