#------------------------------------------
# Variables for East US Region
#------------------------------------------
location                      = "eastus"
region                        = "eu"
disable_bgp_route_propagation = true
tags = {
  prod = {
    environment        = "prod"
    finance_allocation = "finance_allocation"
    project_owner      = "network"
    product            = "network"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  dev = {
    environment        = "dev"
    finance_allocation = "finance_allocation"
    project_owner      = "network"
    product            = "network"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  poc = {
    environment        = "poc"
    finance_allocation = "finance_allocation"
    project_owner      = "dsg"
    product            = "dsg"
    network_segment    = "oos"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "dsg"
  }
  stg = {
    environment        = "stg"
    finance_allocation = "finance_allocation"
    project_owner      = "network"
    product            = "network"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  psr = {
    environment        = "psr"
    finance_allocation = "finance_allocation"
    project_owner      = "network"
    product            = "network"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  qa = {
    environment        = "qa"
    finance_allocation = "finance_allocation"
    project_owner      = "network"
    product            = "network"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  stb = {
    environment        = "stb"
    finance_allocation = "finance_allocation"
    project_owner      = "network"
    product            = "network"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  hub = {
    environment        = "hub"
    finance_allocation = "finance_allocation"
    project_owner      = "network"
    product            = "network"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
}
address_space = {
  prod = {
    prod-c2c = {
      name          = "prod-c2c"
      address_space = ["10.88.16.0/20"]
      rg_suffix       = "network"
    }
    prod-cde = {
      name          = "prod-cde"
      address_space = ["10.88.0.0/20"]
      rg_suffix       = "network"
    }
    prod-oos = {
      name          = "prod-oos"
      address_space = ["10.88.32.0/20"]
      rg_suffix       = "network"
    }
  }
  hub = {
    hub = {
      name          = "hub"
      address_space = ["10.88.48.0/20"]
      rg_suffix       = "landingzone"
    }
  }
  poc = {
    poc = {
      name          = "poc"
      address_space = ["10.130.0.0/20"]
      rg_suffix       = "dsg"
    }
  }
  psr = {
    psr-c2c = {
      name          = "psr-c2c"
      address_space = ["10.89.80.0/21"]
      rg_suffix       = "network"
    }
    psr-cde = {
      name          = "psr-cde"
      address_space = ["10.89.72.0/21"]
      rg_suffix       = "network"
    }
    psr-oos = {
      name          = "psr-oos"
      address_space = ["10.89.88.0/21"]
      rg_suffix       = "network"
    }
  }

  dev = {
    dev-c2c = {
      name          = "dev-c2c"
      address_space = ["10.89.32.0/21"]
      rg_suffix       = "network"
    }
    dev-cde = {
      name          = "dev-cde"
      address_space = ["10.89.24.0/21"]
      rg_suffix       = "network"
    }
    dev-oos = {
      name          = "dev-oos"
      address_space = ["10.89.40.0/21"]
      rg_suffix       = "network"
    }
    # dev-oos-dsg = {
    #   name          = "dev-oos-dsg"
    #   address_space = ["10.89.120.0/21"]
    #   rg_suffix       = "dsg"
    # }
  }

  qa = {
    qa-c2c = {
      name          = "qa-c2c"
      address_space = ["10.89.56.0/21"]
      rg_suffix       = "network"
    }
    qa-cde = {
      name          = "qa-cde"
      address_space = ["10.89.48.0/21"]
      rg_suffix       = "network"
    }
    qa-oos = {
      name          = "qa-oos"
      address_space = ["10.89.64.0/21"]
      rg_suffix       = "network"
    }
  }

  stb = {
    stb-c2c = {
      name          = "stb-c2c"
      address_space = ["10.89.104.0/21"]
      rg_suffix       = "network"
    }
    stb-cde = {
      name          = "stb-cde"
      address_space = ["10.89.96.0/21"]
      rg_suffix       = "network"
    }
    stb-oos = {
      name          = "stb-oos"
      address_space = ["10.89.112.0/21"]
      rg_suffix       = "network"
    }
  }

  stg = {
    stg-c2c = {
      name          = "stg-c2c"
      address_space = ["10.89.8.0/21"]
      rg_suffix       = "network"
    }
    stg-cde = {
      name          = "stg-cde"
      address_space = ["10.89.0.0/21"]
      rg_suffix       = "network"
    }
    stg-oos = {
      name          = "stg-oos"
      address_space = ["10.89.16.0/21"]
      rg_suffix       = "network"
    }
  }
}
#================================================================================#

subnet_prefixes = {
  hub = {

    hub-mgmt = {
      name              = "mgmt"
      address_prefixes  = ["10.88.52.0/22"]
      skey              = "hub"
      service_endpoints = ["Microsoft.Storage", ]
    }

    hub-lb = {
      name              = "lb"
      address_prefixes  = ["10.88.57.0/24"]
      skey              = "hub"
      service_endpoints = ["Microsoft.Storage", ]
    }

    hub-infra = {
      name              = "packer-image"
      address_prefixes  = ["10.88.61.0/24"]
      skey              = "hub"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }
  poc = {

    poc-mgmt = {
      name              = "mgmt"
      address_prefixes  = ["10.130.0.0/22"]
      skey              = "poc"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }
  prod = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.88.16.0/23"]
      skey              = "prod-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.88.18.0/23"]
      skey              = "prod-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.88.22.0/24"]
      skey              = "prod-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.88.0.0/23"]
      skey              = "prod-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.88.2.0/23"]
      skey              = "prod-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.88.6.0/24"]
      skey              = "prod-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.88.32.0/23"]
      skey              = "prod-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.88.34.0/23"]
      skey              = "prod-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.88.38.0/24"]
      skey              = "prod-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }

  psr = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.89.82.0/23"]
      skey              = "psr-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.84.0/23"]
      skey              = "psr-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.87.0/24"]
      skey              = "psr-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.89.74.0/23"]
      skey              = "psr-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.76.0/23"]
      skey              = "psr-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.79.0/24"]
      skey              = "psr-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.89.90.0/23"]
      skey              = "psr-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.92.0/23"]
      skey              = "psr-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.95.0/24"]
      skey              = "psr-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }

  dev = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.89.34.0/23"]
      skey              = "dev-c2c"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault"]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.36.0/23"]
      skey              = "dev-c2c"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault"]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.39.0/24"]
      skey              = "dev-c2c"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault"]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.89.26.0/23"]
      skey              = "dev-cde"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault", "Microsoft.CognitiveServices"]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.28.0/23"]
      skey              = "dev-cde"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault", "Microsoft.CognitiveServices"]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.31.0/24"]
      skey              = "dev-cde"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault"]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.89.42.0/23"]
      skey              = "dev-oos"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault"]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.44.0/23"]
      skey              = "dev-oos"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault"]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.47.0/24"]
      skey              = "dev-oos"
      service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault"]
    }
    # oos-app-dsg = {
    #   name              = "app"
    #   address_prefixes  = ["10.89.120.0/23"]
    #   skey              = "dev-oos-dsg"
    #   service_endpoints = ["Microsoft.Storage", "Microsoft.KeyVault"]
    # }


  }

  qa = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.89.58.0/23"]
      skey              = "qa-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.60.0/23"]
      skey              = "qa-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.63.0/24"]
      skey              = "qa-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.89.50.0/23"]
      skey              = "qa-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.52.0/23"]
      skey              = "qa-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.55.0/24"]
      skey              = "qa-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.89.66.0/23"]
      skey              = "qa-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.68.0/23"]
      skey              = "qa-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.71.0/24"]
      skey              = "qa-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }

  stb = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.89.106.0/23"]
      skey              = "stb-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.108.0/23"]
      skey              = "stb-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.111.0/24"]
      skey              = "stb-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.89.98.0/23"]
      skey              = "stb-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.100.0/23"]
      skey              = "stb-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.103.0/24"]
      skey              = "stb-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.89.114.0/23"]
      skey              = "stb-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.116.0/23"]
      skey              = "stb-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.119.0/24"]
      skey              = "stb-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }

  stg = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.89.8.0/23"]
      skey              = "stg-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.10.0/23"]
      skey              = "stg-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.14.0/24"]
      skey              = "stg-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.89.0.0/23"]
      skey              = "stg-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.2.0/23"]
      skey              = "stg-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.6.0/24"]
      skey              = "stg-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.89.16.0/23"]
      skey              = "stg-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.89.18.0/23"]
      skey              = "stg-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.89.22.0/24"]
      skey              = "stg-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }
}

