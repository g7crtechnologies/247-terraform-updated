variable "instance_config" {
  description = "See tfs_compute for documentation."
  default = {

    // release_type = no default
    rg_suffix                        = "speech"
    enable_zone                      = false
    vm_count                         = 2
    network_type                     = "cde-app"
    disk_count                       = 1
    component                        = "wcrslsaudioproc"
    private_ip_address_alloc         = "Dynamic"
    component                        = "wcrslsaudioproc"
    image_name                       = "rockylinux9"
    image_gallery_name               = "rockylinux9"
    image_resource_group_name        = "tfs-rg-hub-eu-landingzone"
    image_version                    = "1.0.1"
    location                         = "eastus"
    os_disk_size                     = "64"
    vm_size                          = "Standard_DS1_v2"
    publisher                        = "OpenLogic"
    offer                            = "CentOS"
    sku                              = "7_9-gen2"
    version                          = "latest"
    enable_proximity_placement_group = false
    vm_availability_zone             = ["1"]
    admin_username                   = "azureadmin"
    caching_type                     = "ReadWrite"
    managed_disk_type                = "Standard_LRS"
    create_option                    = "FromImage"
    azuread_group_name               = ["7c4b947d-25ef-46fd-ad99-39fa549587d2"]
    mount_list                       = ["/var/tellme"]
    pip_count                        = null
    fileshare_name                   = ["//tfsspeechdeveast.file.core.windows.net/wcr-decrypt"]

    tags = {
      dev = {
        environment        = "dev"
        finance_allocation = "finance_allocation"
        project_owner      = "speech"
        product            = "speech"
        product_component  = "wcrslsaudioproc"
        network_segment    = "cde"
        type_of_appliance  = "web"
        risk_zone          = "zone1"
        appliance_owner    = "networking"
      }
    }
  }
}
