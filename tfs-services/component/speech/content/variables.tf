variable "instance_config" {
  description = "See tfs_compute for documentation."
  default = {
    // release_type = no default
    rg_suffix                        = "speech"
    enable_zone                      = false
    vm_count                         = 1
    disk_count                       = 1
    private_ip_address_alloc         = "Dynamic"
    component                        = "content"
    image_name                       = "rockylinux9"
    image_gallery_name               = "rockylinux9"
    image_resource_group_name        = "tfs-rg-hub-eu-landingzone"
    image_version                    = "1.0.1"
    location                         = "eastus"
    vm_size                          = "Standard_DS1_v2"
    publisher                        = "OpenLogic"
    offer                            = "CentOS"
    sku                              = "7_9-gen2"
    version                          = "latest"
    os_disk_size                     = "50"
    enable_proximity_placement_group = false
    vm_availability_zone             = ["1"]
    admin_username                   = "azureadmin"
    caching_type                     = "ReadWrite"
    managed_disk_type                = "Standard_LRS"
    create_option                    = "FromImage"
    mount_list                       = ["/var/tellme"]
    pip_count                        = null
    enable_pip                       = false
    increase_nic                     = false
    nic_id                           = ""
    fileshare_name                   = ["//tfsspeechdeveast.file.core.windows.net/content-audio", "//tfsspeechdeveast.file.core.windows.net/content-static", "//tfsspeechdeveast.file.core.windows.net/audio-darbot", "//tfsspeechdeveast.file.core.windows.net/vcontent-private", "//tfsspeechdeveast.file.core.windows.net/content-feeds", "//tfsspeechdeveast.file.core.windows.net/content-emdata"]
    nic_name                         = null
    nic_rg                           = null
    azuread_group_name               = ["az-dev-speech@247.ai"]
    location                         = "eastus"
    lb_name                          = "tfs-ilb-content-eu-speech"
    enable_lb                        = true

    lbs = {
      dev = {
        dev-c2c = {
          product   = "speech"
          component = "content"
          pci_type  = "c2c"
          sku       = "Standard"
        }
      }
    }

    lb_creation = true
    LbRules = {
      lbrules1 = {
        lb_name           = "tfs-ilb-content-eu-speech"
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
        product_component  = "telapp"
        network_segment    = "cde"
        type_of_appliance  = "web"
        risk_zone          = "zone1"
        appliance_owner    = "networking"
      }
    }
  }
}
