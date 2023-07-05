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
        backend_pools = {
          pool1 = {
            vm1 = {
              ip_address = "10.0.0.1"
              port       = 8080
            }
          }
          pool2 = {
            vm2 = {
              ip_address = "10.0.0.2"
              port       = 8080
            }
          }
        }
        probes = {
          probe1 = {
            protocol               = "HTTP"
            port                   = 80
            interval               = 10
            unhealthy_threshold    = 3
            healthy_threshold      = 2
            timeout                = 5
            path                   = "/health"
            status_codes           = "200-299"
          }
        }
        rules = {
          rule1 = {
            frontend_port          = 80
            backend_port           = 8080
            protocol               = "Tcp"
            backend_pool_name      = "pool1"
            probe_name             = "probe1"
          }
          rule2 = {
            frontend_port          = 80
            backend_port           = 8080
            protocol               = "Tcp"
            backend_pool_name      = "pool2"
            probe_name             = "probe1"
          }
        }
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
