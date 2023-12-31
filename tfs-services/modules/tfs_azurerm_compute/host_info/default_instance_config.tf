locals {
  default_instance_config = {
    // release_type = no default
    rg_suffix                        = "landingzone"
    enable_zone                      = true
    vm_count                         = 1
    image_name                       = "rockylinux9"
    image_gallery_name               = "rockylinux9"
    image_resource_group_name        = "tfs-rg-hub-eu-landingzone"
    image_version                    = "1.0.1"
    product                          = "speech"
    private_ip_address_alloc         = "Dynamic"
    component                        = "speech"
    location                         = "eastus"
    vm_size                          = "Standard_DS1_v2"
    publisher                        = "OpenLogic"
    offer                            = "CentOS"
    sku                              = "7_9-gen2"
    version                          = "latest"
    enable_proximity_placement_group = true
    vm_availability_zone             = "1"
    admin_username                   = "azureadmin"
    caching_type                     = "ReadWrite"
    managed_disk_type                = "Standard_LRS"
    create_option                    = "FromImage"
    alt_datacenter                   = "east"
    datacenter                       = "usw1"
    dns_name                         = "test"
    short_dns_name                   = "speech.dev.east.azcloud.247-inc.net"
    environment                      = "dev"
    az_alt_region                    = "westus"
    az_region                        = "eastus"
    az_zone                          = "1"
    instance_name                    = "wcrslsaudioproc"
    network_type                     = "oos-app"
    number1                          = 1
    prefix                           = "dev"
    release_type                     = "speech.wcrslsaudioproc"
    ssh_key_name                     = "tfs-ssh-key"
    dns_a_record_ttl                 = "300"
    dns_a_record_records             = ["10.0.180.17"]
    dns_c_record_ttl                 = "300"
    dns_c_record_records             = ["10.0.180.17"]
    domain_name                      = "azcloud.247-inc.net"
    pvt_dns_rg                       = "tfs-rg-hub-eu-landingzone"
    disk_count                       = 2
    os_disk_size                     = "32"
    data_disk_name = [
      {
        name                 = "01"
        disk_size_gb         = "32"
        lun                  = "0"
        create_option        = "Empty"
        storage_account_type = "Standard_LRS"
        caching_type         = "ReadWrite"
      },
      {
        name                 = "02"
        disk_size_gb         = "32"
        lun                  = "1"
        create_option        = "Empty"
        storage_account_type = "Standard_LRS"
        caching_type         = "ReadWrite"
      },
      {
        name                 = "03"
        disk_size_gb         = "32"
        lun                  = "2"
        create_option        = "Empty"
        storage_account_type = "Standard_LRS"
        caching_type         = "ReadWrite"
      }
    ]
    vm_availability_zone = "1"
    admin_username       = "azureadmin"
    caching_type         = "ReadWrite"
    managed_disk_type    = "Standard_LRS"
    create_option        = "FromImage"
    tags = {
      terraform     = "1"
      environment   = "dev"
      project_owner = "speech"
    }
  }

  // I is default instance config merged with incoming variable instance
  // config, but with the 'overrides' key removed

}
