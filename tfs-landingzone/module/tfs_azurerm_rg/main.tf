#------------------------------------------
# Local Varaible
#------------------------------------------
locals {
  rg   = values(azurerm_resource_group.infra)[*].name
}

#------------------------------------------
# Resource Group
#------------------------------------------

resource "azurerm_resource_group" "infra" {
  for_each = var.env[terraform.workspace]
  name     = "tfs-rg-${terraform.workspace}-${var.region}-${each.value["rg_suffix"]}"
  location = var.location
  tags     = var.tags[terraform.workspace]
}

