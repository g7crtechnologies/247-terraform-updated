#Module for Load Balancer
module "lb" {
  source   = "../modules/tfs_azurerm_lb"
  location = var.location
  lbs      = var.lbs
  tags     = var.tags
}

module "lb_rules" {
  source   = "../modules/tfs_azurerm_lbrules"
  location = var.location
  product  = var.product
  LbRules  = var.lbs[terraform.workspace].LbRules
  nic_name = var.nic_name
  nic_rg   = var.nic_rg
  lb_name  = module.lb.lb_name
}
