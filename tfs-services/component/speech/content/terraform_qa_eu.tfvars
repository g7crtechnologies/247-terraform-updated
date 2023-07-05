instance_config = {
  rg_suffix                        = "speech"
  enable_zone                      = true
  vm_count                         = 2
  network_type                     = "c2c-app"
  disk_count                       = 1
  component                        = "content"
  enable_proximity_placement_group = false
  image_name                       = "rockylinux9"
  image_gallery_name               = "rockylinux9"
  dns_c_record_records             = "www.google.com"
  image_resource_group_name        = "tfs-rg-hub-eu-landingzone"
  image_version                    = "1.0.0"
  vm_size                          = "Standard_D4as_v4"
  os_disk_size                     = "64"
  azuread_group_name               = ["az-dev-speech@247.ai"]
  location                         = "eastus"
  mount_list                       = ["/var/tellme"]
  pip_count                        = null
  enable_pip                       = false
  increase_nic                     = false
  nic_id                           = ""
  fileshare_name                   = ["//tfsspeechdeveast.file.core.windows.net/content-audio", "//tfsspeechdeveast.file.core.windows.net/content-static", "//tfsspeechdeveast.file.core.windows.net/audio-darbot", "//tfsspeechdeveast.file.core.windows.net/vcontent-private", "//tfsspeechdeveast.file.core.windows.net/content-feeds", "//tfsspeechdeveast.file.core.windows.net/content-emdata"]
  nic_name                         = null
  nic_rg                           = null
  enable_lb                        = true
  lb_creation                      = true
  lb_name                          = "tfs-ilb-content-eu-speech"

  lbs = {
    qa = {
      qa-c2c = {
        product   = "speech"
        component = "content"
        pci_type  = "c2c"
        sku       = "Standard"
      }
    }
  }

  LbRules = {
    lbrules1 = {
      lb_name           = "tfs-ilb-content-eu-speech"
      vnet_name         = "tfs-vnet-qa-c2c-eu"
      pci               = "c2c"
      Id                = "1"   #Id of a the rule within the Load Balancer
      lb_key            = "lb1" #Key of the Load Balancer
      lb_port           = "80"
      probe_port        = "80"
      backend_port      = "80"
      probe_protocol    = "Http"
      request_path      = "/"
      load_distribution = "SourceIPProtocol"
      skey              = "qa"
    }
  }

  tags = {
    qa = {
      environment        = "qa"
      finance_allocation = "finance_allocation"
      project_owner      = "speech"
      product            = "speech"
      product_component  = "content"
      network_segment    = "c2c"
      type_of_appliance  = "web"
      risk_zone          = "zone1"
      appliance_owner    = "networking"
    }
  }
}