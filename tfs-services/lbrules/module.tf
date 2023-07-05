module "lb_rules" {
  source   = "../modules/tfs_azurerm_lbrules"
  location = var.location
  product  = var.product
  LbRules  = var.LbRules
  nic_name = var.nic_name
  nic_rg   = var.nic_rg
  lb_name  = var.lb_name
}
