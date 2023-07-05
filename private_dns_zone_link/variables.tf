
variable "location" {
  type        = string
  description = "(Required): Region / Location where Azure DNS Resolver should be deployed"
}

variable "tags" {
  description = "The tags to associate with resources"
  type        = any
  default = {
    prod = {
      environment        = "dev"
      finance_allocation = "finance_allocation"
      project_owner      = "speech"
      product            = "speech"
      product_component  = "apigee"
      network_segment    = "c2c"
      type_of_appliance  = "web"
      risk_zone          = "zone1"
      appliance_owner    = "networking"
    }
  }
}

variable "vnet_name" {
  type        = any
  description = "variable for vnets to fetch vnet_id from data"
  default = {
    dev = {
      dev-cde-eu = {
        name                 = "tfs-vnet-dev-cde-eu-speech"
        rg_name              = "tfs-rg-dev-eu-landingzone"
        registration_enabled = true
      },
      dev-c2c-eu = {
        name                 = "tfs-vnet-dev-c2c-eu-speech"
        rg_name              = "tfs-rg-dev-eu-landingzone"
        registration_enabled = true
      },
      dev-oos-eu = {
        name                 = "tfs-vnet-dev-oos-eu-speech"
        rg_name              = "tfs-rg-dev-eu-landingzone"
        registration_enabled = true
      },
    },
    hub = {
      hub-eu = {
        name                 = "tfs-vnet-hub-eu-speech"
        rg_name              = "tfs-rg-hub-eu-landingzone"
        registration_enabled = true
      },
      hub-wu = {
        name                 = "tfs-vnet-hub-wu-speech"
        rg_name              = "tfs-rg-hub-eu-landingzone"
        registration_enabled = true
      },
    }
  }
}
