#Variable for East US Region
location = "westus"
lbs = {
  qa = {
    lb = {
      product   = "speech"
      component = "audio"
      pci_type  = "cde"
      sku       = "Standard"
      LbRules = {
        lbrules1 = {
          lb_name           = "tfs-ilb-audio-eu-speech"
          vnet_name         = "tfs-vnet-dev-cde-eu"
          pci               = "cde"
          Id                = "1"   #Id of a the rule within the Load Balancer
          lb_key            = "lb1" #Key of the Load Balancer
          lb_port           = "80"
          probe_port        = "80"
          backend_port      = "80"
          probe_protocol    = "Http"
          request_path      = "/"
          load_distribution = "SourceIPProtocol"
          skey              = "dev"
        }
      }
    }
  }
}

tags = {
  hub = {
    environment        = "hub"
    finance_allocation = "finance_allocation"
    project_owner      = "speech"
    product            = "speech"
    product_component  = "apigee"
    network_segment    = "c2c"
    type_of_appliance  = "web"
    risk_zone          = "zone1"
    appliance_owner    = "networking"
  }
}

product  = "speech"
nic_name = null
nic_rg   = null
