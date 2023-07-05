#!/bin/bash

# Set variables
resource_group="tfs-rg-poc-eu-dsg"
env="poc"
location_prefix="east"
component="openai"
location="eastus"
disk_sku="Standard_LRS"
disk_sizes=(512 1024) # in GB
number_of_disks=${#disk_sizes[@]}
number_of_vms="1"
zones=("1" "2" "3")

# Create the disks
for ((j = 1; j <= number_of_vms; j++)); do
    for ((i = 1; i <= number_of_disks; i++)); do
        disk_name="tfs-datadisk-${env}-${location_prefix}-${component}-vm-${j}-disk-${i}"
        disk_size=${disk_sizes[$i - 1]}
        zone_index=$((j - 1))
        zone=${zones[$zone_index % ${#zones[@]}]}
        az disk delete \
            --resource-group $resource_group \
            --name $disk_name \
            --yes
    done
done
