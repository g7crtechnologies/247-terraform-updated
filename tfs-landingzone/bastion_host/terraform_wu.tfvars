location    = "westus"
subnet_cidr = ["10.86.58.0/26"]
sku         = "Standard" // Basic or Standard
scale_units = 2       // Basic = 2 or Standard = 2 to 50
tags = {
  hub = {
    environment        = "hub"
    finance_allocation = "Engineering"
    product_component  = "bastion"
    network_segment    = "hub"
    type_of_appliance  = "bastion"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
}