#Variable for East US Region
location                = "eastus"
enable_forced_tunneling = false
public_ip_names         = ["fw-public"]
firewall_subnet         = ["10.88.48.0/26"]
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
    product_component  = "firewall"
    network_segment    = "hub"
    type_of_appliance  = "bastion"
    risk_zone          = "firewall"
    appliance_owner    = "networking"
  }
}

firewall_policy = {
  name              = "hub"
  sku_tier          = "Premium"
  threat_intel_mode = "Alert"
}
