#------------------------------------------
# Variables for West US Region
#------------------------------------------
location                      = "westus"
region                        = "wu"
disable_bgp_route_propagation = true
tags = {
  prod = {
    environment        = "prod"
    finance_allocation = "finance_allocation"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  stg = {
    environment        = "stg"
    finance_allocation = "finance_allocation"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  psr = {
    environment        = "psr"
    finance_allocation = "finance_allocation"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  stb = {
    environment        = "stb"
    finance_allocation = "finance_allocation"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
  hub = {
    environment        = "hub"
    finance_allocation = "finance_allocation"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
    qa = {
    environment        = "qa"
    finance_allocation = "finance_allocation"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
}

address_space = {
  hub = {
    hub = {
      name          = "hub"
      address_space = ["10.86.48.0/20"]
      rg_suffix       = "landingzone"
    }
  }
  prod = {
    prod-c2c = {
      name          = "prod-c2c"
      address_space = ["10.86.16.0/20"]
      rg_suffix       = "network"
    }
    prod-cde = {
      name          = "prod-cde"
      address_space = ["10.86.0.0/20"]
      rg_suffix       = "network"
    }
    prod-oos = {
      name          = "prod-oos"
      address_space = ["10.86.32.0/21"]
      rg_suffix       = "network"
    }
  }

  psr = {
    psr-c2c = {
      name          = "psr-c2c"
      address_space = ["10.87.80.0/21"]
      rg_suffix       = "network"
    }
    psr-cde = {
      name          = "psr-cde"
      address_space = ["10.87.72.0/21"]
      rg_suffix       = "network"
    }
    psr-oos = {
      name          = "psr-oos"
      address_space = ["10.87.88.0/21"]
      rg_suffix       = "network"
    }
  }

  stb = {
    stb-c2c = {
      name          = "stb-c2c"
      address_space = ["10.87.104.0/21"]
      rg_suffix       = "network"
    }
    stb-cde = {
      name          = "stb-cde"
      address_space = ["10.87.96.0/21"]
      rg_suffix       = "network"
    }
    stb-oos = {
      name          = "stb-oos"
      address_space = ["10.87.112.0/21"]
      rg_suffix       = "network"
    }
  }

  stg = {
    stg-c2c = {
      name          = "stg-c2c"
      address_space = ["10.87.8.0/21"]
      rg_suffix       = "network"
    }
    stg-cde = {
      name          = "stg-cde"
      address_space = ["10.87.0.0/21"]
      rg_suffix       = "network"
    }
    stg-oos = {
      name          = "stg-oos"
      address_space = ["10.87.16.0/21"]
      rg_suffix       = "network"
    }
  }

    qa = {
    qa-c2c = {
      name          = "qa-c2c"
      address_space = ["10.87.56.0/21"]
      rg_suffix       = "network"
    }
    qa-cde = {
      name          = "qa-cde"
      address_space = ["10.87.48.0/21"]
      rg_suffix       = "network"
    }
    qa-oos = {
      name          = "qa-oos"
      address_space = ["10.87.64.0/21"]
      rg_suffix       = "network"

    }
  }
}
#================================================================================#

subnet_prefixes = {
  hub = {

    hub-mgmt = {
      name              = "mgmt"
      address_prefixes  = ["10.86.52.0/22"]
      skey              = "hub"
      service_endpoints = ["Microsoft.Storage", ]
    }
    hub-lb = {
      name              = "lb"
      address_prefixes  = ["10.86.57.0/24"]
      skey              = "hub"
      service_endpoints = ["Microsoft.Storage", ]
    }
  }

  prod = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.86.16.0/23"]
      skey              = "prod-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.86.18.0/23"]
      skey              = "prod-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.86.22.0/24"]
      skey              = "prod-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.86.0.0/23"]
      skey              = "prod-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.86.2.0/23"]
      skey              = "prod-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.86.6.0/24"]
      skey              = "prod-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.86.32.0/23"]
      skey              = "prod-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.86.34.0/23"]
      skey              = "prod-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.86.38.0/24"]
      skey              = "prod-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }

  psr = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.87.82.0/23"]
      skey              = "psr-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.84.0/23"]
      skey              = "psr-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.87.0/24"]
      skey              = "psr-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.87.74.0/23"]
      skey              = "psr-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.76.0/23"]
      skey              = "psr-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.79.0/24"]
      skey              = "psr-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.87.90.0/23"]
      skey              = "psr-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.92.0/23"]
      skey              = "psr-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.95.0/24"]
      skey              = "psr-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }

  stb = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.87.106.0/23"]
      skey              = "stb-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.108.0/23"]
      skey              = "stb-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.111.0/24"]
      skey              = "stb-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.87.98.0/23"]
      skey              = "stb-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.100.0/23"]
      skey              = "stb-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.103.0/24"]
      skey              = "stb-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.87.114.0/24"]
      skey              = "stb-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.116.0/24"]
      skey              = "stb-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.119.0/24"]
      skey              = "stb-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }

  stg = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.87.8.0/23"]
      skey              = "stg-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.10.0/23"]
      skey              = "stg-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.14.0/24"]
      skey              = "stg-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.87.0.0/23"]
      skey              = "stg-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.2.0/23"]
      skey              = "stg-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.6.0/24"]
      skey              = "stg-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.87.16.0/23"]
      skey              = "stg-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.18.0/23"]
      skey              = "stg-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.22.0/24"]
      skey              = "stg-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }

  qa = {

    c2c-app = {
      name              = "app"
      address_prefixes  = ["10.87.56.0/23"]
      skey              = "qa-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.60.0/23"]
      skey              = "qa-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }
    c2c-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.63.0/24"]
      skey              = "qa-c2c"
      service_endpoints = ["Microsoft.Storage", ]
    }

    cde-app = {
      name              = "app"
      address_prefixes  = ["10.87.48.0/23"]
      skey              = "qa-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.50.0/23"]
      skey              = "qa-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }
    cde-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.55.0/24"]
      skey              = "qa-cde"
      service_endpoints = ["Microsoft.Storage", ]
    }

    oos-app = {
      name              = "app"
      address_prefixes  = ["10.87.64.0/23"]
      skey              = "qa-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-app-data = {
      name              = "app-data"
      address_prefixes  = ["10.87.68.0/23"]
      skey              = "qa-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }
    oos-lb = {
      name              = "lb"
      address_prefixes  = ["10.87.71.0/24"]
      skey              = "qa-oos"
      service_endpoints = ["Microsoft.Storage", ]
    }

  }
}


