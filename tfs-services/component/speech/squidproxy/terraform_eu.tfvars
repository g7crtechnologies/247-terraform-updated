instance_config = {
  rg_suffix                        = "speech"
  vm_count                         = 2
  network_type                     = "c2c-app"
  disk_count                       = 1
  component                        = "squidproxy"
  image_name                       = "rockylinux9"
  image_gallery_name               = "rockylinux9"
  image_resource_group_name        = "tfs-rg-hub-eu-landingzone"
  image_version                    = "1.0.1"
  enable_proximity_placement_group = false
  vm_size                          = "Standard_D2as_v4"
  os_disk_size                     = "64"
  lb_name                          = "tfs-ilb-squidproxy-eu-speech"
  enable_lb                        = true
  lb_creation                      = true
  azuread_group_name               = ["az-dev-speech@247.ai"]
  location                         = "eastus"
  prefix                           = "tfs-ilb"
  mount_list                       = ["/var/tellme"]
  pip_count                        = null
  fileshare_name                   = [""]
  increase_nic                     = false
  enable_pip                       = false
  nic_name                         = null
  nic_rg                           = null
  nic_id                           = ""

  lbs = {
    dev = {
      dev-c2c = {
        product   = "speech"
        component = "squidproxy"
        pci_type  = "cde"
        sku       = "Standard"
      }

    }
  }

  LbRules = {
    lbrules1 = {
      lb_name           = "tfs-ilb-squidproxy-eu-speech"
      vnet_name         = "tfs-vnet-dev-c2c-eu-speech"
      pci               = "c2c"
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

  tags = {
    dev = {
      environment        = "dev"
      finance_allocation = "finance_allocation"
      project_owner      = "speech"
      product            = "speech"
      product_component  = "squidproxy"
      network_segment    = "c2c"
      type_of_appliance  = "web"
      risk_zone          = "zone1"
      appliance_owner    = "networking"
    }
  }
}
