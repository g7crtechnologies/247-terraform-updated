#------------------------------------------
# Local Variabless
#------------------------------------------
locals {
  environment = var.location == "eastus" ? "eastus" : "westus"
  loc_prefix  = var.location == "eastus" ? "eu" : "wu"
  }

#------------------------------------------
# Remote State file for Subnet
#------------------------------------------
data "terraform_remote_state" "subnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "tfs-rg-poc-tfstate"
    storage_account_name = "tfsstgpoctfstate"
    container_name       = "tfstate"
    key                  = "${local.environment}/vnet/poc/default.tfstateenv:poc"
  }
}
#------------------------------------------
# Output of subnets
#------------------------------------------

### hub subnet id
output "mgmt" {
  value = data.terraform_remote_state.subnet.outputs.mgmt
}

variable "location" {
  type        = string
  description = "location of resources"
}

output "subnet_ids" {
  value = data.terraform_remote_state.subnet.outputs.subnet_ids
}


