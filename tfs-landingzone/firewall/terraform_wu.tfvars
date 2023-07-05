#Variable for West US Region
location                = "westus"
enable_forced_tunneling = false
public_ip_names         = ["fw-public"]
firewall_subnet         = ["10.86.48.0/26"]
firewall_config = {
  name     = "hub"
  sku_name = "AZFW_VNet"
  sku_tier = "Premium"
}
# Adding TAG's to your Azure resources 
tags = {
  hub = {
    environment        = "hub"
    finance_allocation = "Engineering"
    project_owner      = "speech"
    product            = "speech"
    network_segment    = "hub"
    type_of_appliance  = "bastion"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
}

firewall_policy = {
  name              = "hub"
  sku_tier          = "Premium"
  threat_intel_mode = "Alert"
}
