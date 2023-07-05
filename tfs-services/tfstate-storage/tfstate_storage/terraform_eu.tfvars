location                 = "eastus"
account_tier             = "Standard"
account_replication_type = "LRS"
container_name           = "tfstate"
container_access_type    = "blob"
enable_pe                = false
subnet_id                = ""
ip_ranges = [
  "172.18.212.0/22",
  "172.18.208.0/22",
  "172.30.55.0/24",
  "192.168.201.0/24",
  "172.25.228.0/22",
  "172.30.16.0/23",
  "172.30.14.0/24",
  "172.30.13.0/24",
  "172.30.0.0/22",
  "10.224.0.0/16",
]
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
