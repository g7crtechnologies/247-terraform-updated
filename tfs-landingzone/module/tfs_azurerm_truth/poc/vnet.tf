#------------------------------------------
# Remote State file for vnet
#------------------------------------------
data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "tfs-rg-poc-tfstate"
    storage_account_name = "tfsstgpoctfstate"
    container_name       = "tfstate"
    key                  = "${local.region}/vnet/poc/default.tfstateenv:poc"

  }
}

#------------------------------------------
# Output of vnets
#------------------------------------------

# hub vnet name
output "vnet_name" {
  value      = data.terraform_remote_state.vnet.outputs.vnet_name
}

# hub vnet id
output "vnet_id" {
  value = data.terraform_remote_state.vnet.outputs.vnet_id
}
