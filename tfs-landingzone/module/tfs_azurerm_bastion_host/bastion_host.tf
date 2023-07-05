#------------------------------------------
# Local variables
#------------------------------------------

locals {
  location            = var.location
  resource_group_name = "tfs-rg-${terraform.workspace}-${local.loc_prefix}-landingzone"
  loc_prefix          = var.location == "eastus" ? "eu" : "wu"
  vnet_name           = module.hub.vnet_name
}

module "rg" {
  source   = "../tfs_azurerm_truth/rg"
  location = var.location

}

module "hub" {
  source   = "../tfs_azurerm_truth/hub"
  location = var.location
}

# Create a subnet for Bastion Host // DO NOT Rename
resource "azurerm_subnet" "bastion-subnet" {
  name                 = "AzureBastionSubnet"
  address_prefixes     = var.subnet_cidr
  virtual_network_name = local.vnet_name
  resource_group_name  = local.resource_group_name
}

# Create a Public IP for the Bastion Host
resource "azurerm_public_ip" "bastion" {
  name                = "tfs-pip-${terraform.workspace}-bh-${local.loc_prefix}"
  resource_group_name = local.resource_group_name
  location            = local.location
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = var.tags[terraform.workspace]
}

# Create the Bastion Host Service
resource "azurerm_bastion_host" "bastion" {
  name                = "tfs-bh-${terraform.workspace}-${local.loc_prefix}"
  resource_group_name = local.resource_group_name
  location            = local.location
  sku                 = var.sku
  scale_units         = var.scale_units
  tunneling_enabled   = var.sku == "Standard" ? true : false

  ip_configuration {
    name                 = "tfs-bh-ipcfg-${terraform.workspace}-${local.loc_prefix}"
    subnet_id            = azurerm_subnet.bastion-subnet.id
    public_ip_address_id = azurerm_public_ip.bastion.id
  }
  tags = var.tags[terraform.workspace]
}
