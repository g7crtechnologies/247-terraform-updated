module "vm" {
  source                         = "../../../modules/tfs_azurerm_compute"
  instance_config                = var.instance_config
  azuread_group_name             = var.instance_config.azuread_group_name
  backend_id                     = var.instance_config.enable_lb == true ? module.lb_rule.backend_id : []
  frontend_ip_configuration_name = var.instance_config.enable_lb == true ? module.lb_rule.frontend_ip_configuration_name : []
  enable_lb                      = var.instance_config.enable_lb
  subnet_id                      = module.vnet.cde_app
  mount_list                     = var.instance_config.mount_list
  enable_pip                     = var.instance_config.enable_pip
  pip_count                      = var.instance_config.pip_count
  increase_nic                   = var.instance_config.increase_nic
  nic_id                         = var.instance_config.nic_id
  fileshare_name                 = var.instance_config.fileshare_name
}

module "lb" {
  count    = var.instance_config.lb_creation == true ? 1 : 0
  source   = "../../../modules/tfs_azurerm_lb"
  lbs      = var.instance_config.lbs
  location = var.instance_config.location
  tags     = var.instance_config.tags
}
module "lb_rule" {
  source   = "../../../modules/tfs_azurerm_lbrules"
  location = var.instance_config.location
  product  = var.instance_config.rg_suffix
  LbRules  = var.instance_config.LbRules
  nic_name = var.instance_config.nic_name
  nic_rg   = var.instance_config.nic_rg
  lb_name  = var.instance_config.lb_creation == true ? tostring(element(module.lb[0].lb_name, 0)) : var.instance_config.lb_name
  depends_on = [
    module.lb
  ]
}
module "vnet" {
  source   = "../../../modules/tfs_azurerm_truth/network"
  location = var.instance_config.location
}
