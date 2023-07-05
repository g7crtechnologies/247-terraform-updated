# Local Variables and accepting remote state file for resource group and subnet
locals {
  location = var.location == "eastus" ? "eu" : "wu"
}

data "azurerm_subnet" "hub" {
  for_each             = var.lbs[terraform.workspace]
  name                 = "tfs-snet-${terraform.workspace}-${each.value.pci_type}-lb-${local.location}"
  virtual_network_name = "tfs-vnet-${terraform.workspace}-${each.value.pci_type}-${local.location}"
  resource_group_name  = "tfs-rg-${terraform.workspace}-${local.location}-network"
}

#------------------------------------------
# Load Balancer
#------------------------------------------

resource "azurerm_lb" "lb" {
  for_each            = var.lbs[terraform.workspace]
  name                = "tfs-ilb-${terraform.workspace}-${each.value.component}-${local.location}-${each.value.product}"
  location            = var.location
  resource_group_name = "tfs-rg-${terraform.workspace}-${local.location}-${each.value.product}"
  sku                 = each.value.sku

  frontend_ip_configuration {
    name                          = "tfs-ilb-${terraform.workspace}-${each.value.component}-${local.location}-${each.value.product}-fip"
    subnet_id                     = data.azurerm_subnet.hub[each.key].id
    private_ip_address_allocation = "dynamic"
  }
  tags = var.tags[terraform.workspace]
}

output "lb_id" {
  value = [
    for lb in azurerm_lb.lb : lb.id
  ]
}
output "lb_name" {
  value = [
    for lb in azurerm_lb.lb : lb.name
  ]
}
