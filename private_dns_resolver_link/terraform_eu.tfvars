#------------------------------------------
# Variables for East US Region
#------------------------------------------
location = "eastus"
vnet_map = {
  dev = {
    cde = {
      rg_suffix = "network"
      pci_type  = "-cde"
    },
    c2c = {
      rg_suffix = "network"
      pci_type  = "-c2c"
    },
    oos = {
      rg_suffix = "network"
      pci_type  = "-oos"
    }
  },
  hub = {
    hub = {
      rg_suffix = "landingzone"
      pci_type  = ""
    },
  },
  poc = {
    poc = {
      rg_suffix = "dsg"
      pci_type  = ""
    }
  },
  qa = {
    cde = {
      rg_suffix = "network"
      pci_type  = "-cde"
    },
    c2c = {
      rg_suffix = "network"
      pci_type  = "-c2c"
    },
    oos = {
      rg_suffix = "network"
      pci_type  = "-oos"
    }
  },
  psr = {
    cde = {
      rg_suffix = "network"
      pci_type  = "-cde"
    },
    c2c = {
      rg_suffix = "network"
      pci_type  = "-c2c"
    },
    oos = {
      rg_suffix = "network"
      pci_type  = "-oos"
    }
  },
  stg = {
    cde = {
      rg_suffix = "network"
      pci_type  = "-cde"
    },
    c2c = {
      rg_suffix = "network"
      pci_type  = "-c2c"
    },
    oos = {
      rg_suffix = "network"
      pci_type  = "-oos"
    }
  },
  stb = {
    cde = {
      rg_suffix = "network"
      pci_type  = "-cde"
    },
    c2c = {
      rg_suffix = "network"
      pci_type  = "-c2c"
    },
    oos = {
      rg_suffix = "network"
      pci_type  = "-oos"
    }
  },
  prod = {
    cde = {
      rg_suffix = "network"
      pci_type  = "-cde"
    },
    c2c = {
      rg_suffix = "network"
      pci_type  = "-c2c"
    },
    oos = {
      rg_suffix = "network"
      pci_type  = "-oos"
    }
  },
}
