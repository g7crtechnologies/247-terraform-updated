
#------------------------------------------
# Variable file for West US Region
#------------------------------------------
env = {
  stb = {
    stb = {
      rg_suffix = "speech"
    }
    stb-network = {
      rg_suffix = "network"
    }
  }
  qa = {
    qa = {
      rg_suffix = "speech"
    }
    qa-network = {
      rg_suffix = "network"
    }
  }
  stg = {
    stg = {
      rg_suffix = "speech"
    }
    stg-network = {
      rg_suffix = "network"
    }
  }
  prod = {
    prod = {
      rg_suffix = "speech"
    }
    prod-network = {
      rg_suffix = "network"
    }
  }
  psr = {
    psr = {
      rg_suffix = "speech"
    }
    psr-network = {
      rg_suffix = "network"
    }
  }
  hub = {
    hub = {
      rg_suffix = "landingzone"
    }
  }
}

region = "wu"
tags = {
  prod = {
    environment        = "prod"
    finance_allocation = "finance_allocation"
    project_owner      = "speech"
    product            = "speech"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "Engineering"
  }
  stg = {
    environment        = "stg"
    finance_allocation = "finance_allocation"
    project_owner      = "speech"
    product            = "speech"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "Engineering"
  }
  psr = {
    environment        = "psr"
    finance_allocation = "finance_allocation"
    project_owner      = "speech"
    product            = "speech"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "Engineering"
  }
  stb = {
    environment        = "stb"
    finance_allocation = "finance_allocation"
    project_owner      = "speech"
    product            = "speech"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "Engineering"
  }
  hub = {
    environment        = "hub"
    finance_allocation = "finance_allocation"
    project_owner      = "speech"
    product            = "speech"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "Engineering"
  }
  qa = {
    environment        = "qa"
    finance_allocation = "finance_allocation"
    project_owner      = "speech"
    product            = "speech"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "Engineering"
  }
}

location = "westus"
