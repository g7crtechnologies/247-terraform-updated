terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.42.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias           = "dev"
  subscription_id = "f63b58a1-f8a2-4d25-8dac-4d38aa90a810"

  features {}
}
provider "azurerm" {
  alias           = "hub"
  subscription_id = "fd2d6291-f998-4e73-95d6-12dc7a0a20c8"
  features {}
}
