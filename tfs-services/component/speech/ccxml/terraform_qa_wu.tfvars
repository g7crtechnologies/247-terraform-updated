instance_config = {
  rg_suffix                        = "speech"
  enable_zone                      = false
  vm_count                         = 2
  network_type                     = "cde-app"
  disk_count                       = 1
  component                        = "ccxml"
  enable_proximity_placement_group = false
  image_name                       = "rockylinux9"
  image_gallery_name               = "rockylinux9"
  dns_c_record_records             = "www.google.com"
  image_resource_group_name        = "tfs-rg-hub-eu-landingzone"
  image_version                    = "1.0.0"
  vm_size                          = "Standard_D4as_v4"
  os_disk_size                     = "64"
  azuread_group_name               = ["az-dev-speech@247.ai"]
  location                         = "westus"
  mount_list                       = ["/var/tellme"]
  pip_count                        = null
  enable_pip                       = false
  increase_nic                     = true
  nic_id                           = ""
  fileshare_name                   = [""]
  nic_name                         = null
  nic_rg                           = null
  nic_count                        = 2
  nsg_name                         = "tfs-nsg-qa-cde-app-data-wu"
  enable_lb                        = true
  lb_creation                      = true
  lb_name                          = "tfs-ilb-ccxml-wu-speech"

  lbs = {
    qa = {
      qa-cde = {
        product   = "speech"
        component = "ccxml"
        pci_type  = "cde"
        sku       = "Standard"
      }
    }
  }

  LbRules = {
    lbrules1 = {
      lb_name           = "tfs-ilb-ccxml-wu-speech"
      vnet_name         = "tfs-vnet-qa-cde-wu"
      pci               = "cde"
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
      product_component  = "ccxml"
      network_segment    = "cde"
      type_of_appliance  = "web"
      risk_zone          = "zone1"
      appliance_owner    = "networking"
    }
  }
}
