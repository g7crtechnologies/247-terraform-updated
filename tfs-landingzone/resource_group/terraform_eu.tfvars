
#------------------------------------------
# Variable file for East US Region
#------------------------------------------
region = "eu"
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
  dev = {
    environment        = "dev"
    finance_allocation = "finance_allocation"
    project_owner      = "speech"
    product            = "speech"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "Engineering"
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
}

location = "eastus"
env = {
  stb = {
    stb = {
      rg_suffix = "speech"
    }
  }
  stg = {
    stg = {
      rg_suffix = "speech"
    },
    stg-network = {
      rg_suffix = "network"
    }
  }

  dev = {
    dev-speech = {
      rg_suffix = "speech"
    },
    dev-network = {
      rg_suffix = "network"
    },
    dev-openai = {
      rg_suffix = "dsg"
    }
  }

  qa = {
    qa = {
      rg_suffix = "speech"
    },
    qa-network = {
      rg_suffix = "network"
    }
  }
  poc = {
    poc = {
      rg_suffix = "dsg"
    }
  }
  prod = {
    prod = {
      rg_suffix = "speech"
    },
    prod-network = {
      rg_suffix = "network"
    }
  }
  psr = {
    psr = {
      rg_suffix = "speech"
    },
    psr-network = {
      rg_suffix = "network"
    }
  }
  hub = {
    hub = {
      rg_suffix = "landingzone"
    },
    infra = {
      rg_suffix = "infra"
    }
  }
}


