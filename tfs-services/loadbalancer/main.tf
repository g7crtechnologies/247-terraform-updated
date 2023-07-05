#Module for Load Balancer
module "lb" {
  source   = "../module/tfs_azurerm_lb"
  location = var.location
  lbs      = var.lbs
  tags     = var.tags
}

