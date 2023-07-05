#!/bin/bash

# Parse JSON file and extract parameter values
rg_suffix=$(jq -r '.rg_suffix' disk.json)
env=$(jq -r '.env' disk.json)
component=$(jq -r '.component' disk.json)
location=$(jq -r '.location' disk.json)
disk_sku=$(jq -r '.disk_sku' disk.json)
disk_sizes=$(jq -r '.disk_sizes | join(" ")' disk.json)
number_of_vms=$(jq -r '.number_of_vms' disk.json)
use_zone=$(jq -r '.use_zone' disk.json)
zones=("1" "2" "3")
az_command_path=$(jq -r '.az_command_path' disk.json)

# Convert disk_sizes to a Python list
disk_sizes=($disk_sizes)
number_of_disks=${#disk_sizes[@]}

# Set location_prefix based on location
if [[ $location == "eastus" ]]; then
    location_prefix="east"
    loc_suffix="eu"
else
    location_prefix="west"
    loc_suffix="wu"
fi

resource_group="tfs-rg-$env-$loc_suffix-$rg_suffix"

# Create the disks
for ((j=1; j<=number_of_vms; j++)); do
    for ((i=1; i<=number_of_disks; i++)); do
        disk_name="tfs-datadisk-$env-$location_prefix-$component-vm-$j-disk-$i"
        disk_size=${disk_sizes[i - 1]}
        zone_index=$(((j - 1) % ${#zones[@]}))
        zone=${zones[zone_index]}

        # Check if the disk already exists
        existing_disk=$(az disk show --name "$disk_name" --resource-group "$resource_group" --query "id" --output tsv)

        if [[ -n $existing_disk ]]; then
            echo "Disk '$disk_name' already exists."
        else
            create_disk_args=("az" "disk" "create"
                "--resource-group" "$resource_group"
                "--name" "$disk_name"
                "--location" "$location"
                "--sku" "$disk_sku"
                "--size-gb" "$disk_size"
            )

            if [[ $use_zone == true ]]; then
                create_disk_args+=("--zone" "$zone")
            fi

            "${create_disk_args[@]}"
            echo "Disk '$disk_name' created successfully."
        fi
    done
done
