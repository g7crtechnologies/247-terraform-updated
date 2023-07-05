variable "instance_config" {
  description = "See tfs_compute for documentation."
  default = {
    // release_type = no default
    rg_suffix                        = "speech"
    enable_zone                      = false
    vm_count                         = 2
    disk_count                       = 1
    private_ip_address_alloc         = "Dynamic"
    image_name                       = "rockylinux9"
    image_gallery_name               = "rockylinux9"
    image_resource_group_name        = "tfs-rg-hub-eu-landingzone"
    image_version                    = "1.0.1"
    dns_c_record_records             = "www.google.com"
    component                        = "audio"
    location                         = "eastus"
    vm_size                          = "Standard_DS1_v2"
    publisher                        = "Openlogic"
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
    fileshare_name                   = [""]
    nic_name                         = null
    nic_rg                           = null
    azuread_group_name               = ["az-dev-speech@247.ai"]
    lb_name                          = "tfs-ilb-audio-eu-speech"
    location                         = "eastus"
    enable_lb                        = true
    lb_creation                      = true

    lbs = {
      dev = {
        dev-cde = {
          product   = "speech"
          component = "audio"
          pci_type  = "cde"
          sku       = "Standard"
        }
      }
    }

    LbRules = {
      lbrules1 = {
        lb_name           = "tfs-ilb-audio-eu-speech"
        vnet_name         = "tfs-vnet-dev-cde-eu-speech"
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

    tags = {
      dev = {
        environment        = "qa"
        finance_allocation = "finance_allocation"
        project_owner      = "speech"
        product            = "speech"
        product_component  = "audio"
        network_segment    = "cde"
        type_of_appliance  = "web"
        risk_zone          = "zone1"
        appliance_owner    = "networking"
      }
    }

  }
}

