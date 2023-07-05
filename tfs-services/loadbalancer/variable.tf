variable "lbs" {
  description = "List containing your load balancers."
  type        = any
  default = {
    qa = {
      qa-cde = {
        product   = "speech"
        component = "audio"
        pci_type  = "cde"
        sku       = "Standard"
      }
    }
  }
}

variable "location" {
  description = "Location of the load balancer, use the RG's location if not set"
  type        = any
  default     = "eastus"
}

variable "tags" {
  description = "The tags to associate with resources"
  type        = any
  default = {
    prod = {
      environment        = "prod"
      finance_allocation = "finance_allocation"
      project_owner      = "speech"
      product            = "speech"
      network_segment    = "c2c"
      type_of_appliance  = "web"
      risk_zone          = "zone1"
      appliance_owner    = "networking"
    }
  }
}
