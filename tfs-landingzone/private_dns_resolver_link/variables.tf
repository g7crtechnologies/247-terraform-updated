variable "location" {
  type        = string
  description = "(Required): Region / Location where Azure DNS Resolver should be deployed"
}

variable "vnet_map" {
  type = map(map(object({
    rg_suffix = string
    pci_type  = string
  })))
  description = "source vnet name for vnet id"
  default = {
    dev = {
      cde = {
        rg_suffix = "landingzone"
        pci_type  = "-cde"
      },
      c2c = {
        rg_suffix = "landingzone"
        pci_type  = "-c2c"
      },
      oos = {
        rg_suffix = "landingzone"
        pci_type  = "-oos"
      }
    }
  }
}
