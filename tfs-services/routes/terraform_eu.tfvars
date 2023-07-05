location = "eastus"
routes = {
  "hub" = {

    "route-01" = {
      name                   = "route-01"
      address_prefix         = "10.88.52.0/22"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-02" = {
      name                   = "route-02"
      address_prefix         = "10.89.24.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-03" = {
      name                   = "route-03"
      address_prefix         = "10.89.72.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-04" = {
      name                   = "route-04"
      address_prefix         = "10.89.80.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-05" = {
      name                   = "route-05"
      address_prefix         = "10.89.88.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-06" = {
      name                   = "route-06"
      address_prefix         = "10.89.96.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-18" = {
      name                   = "route-18"
      address_prefix         = "10.88.32.0/20"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-07" = {
      name                   = "route-07"
      address_prefix         = "10.89.104.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-08" = {
      name                   = "route-08"
      address_prefix         = "10.89.112.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-09" = {
      name                   = "route-09"
      address_prefix         = "10.89.48.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-17" = {
      name                   = "route-17"
      address_prefix         = "10.88.16.0/20"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-10" = {
      name                   = "route-10"
      address_prefix         = "10.89.56.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-11" = {
      name                   = "route-11"
      address_prefix         = "10.89.64.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-16" = {
      name                   = "route-16"
      address_prefix         = "10.88.0.0/20"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-12" = {
      name                   = "route-12"
      address_prefix         = "10.89.32.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-15" = {
      name                   = "route-15"
      address_prefix         = "10.89.16.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-13" = {
      name                   = "route-13"
      address_prefix         = "10.89.0.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-14" = {
      name                   = "route-14"
      address_prefix         = "10.89.8.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-20" = {
      name                   = "route-20"
      address_prefix         = "10.88.61.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-21" = {
      name                   = "route-21"
      address_prefix         = "10.89.40.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-dns-inbound-hub" = {
      name                   = "route-dns-inbound-hub"
      address_prefix         = "10.88.59.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-dns-inbound-eu"
    },

    "route-dns-outbound-hub" = {
      name                   = "route-dns-outbound-hub"
      address_prefix         = "10.88.60.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-dns-outbound-eu"
    },

    "route-lb-hub" = {
      name                   = "route-lb-hub"
      address_prefix         = "10.88.57.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

    "route-22" = {
      name                   = "route-22"
      address_prefix         = "10.130.0.0/22"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },
    "route-23" = {
      name                   = "route-23"
      address_prefix         = "10.130.0.0/20"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-hub-er-eu"
    },

  },

  "prod" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-prod-c2c-eu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-prod-cde-eu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-prod-oos-eu"
    },
  },

  "psr" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-psr-c2c-eu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-psr-cde-eu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-psr-oos-eu"
    },
  },

  "dev" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-dev-c2c-eu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-dev-cde-eu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-dev-oos-eu"
    },
  },

  "qa" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-qa-c2c-eu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-qa-cde-eu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-qa-oos-eu"
    },
  },

  "stg" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-stg-c2c-eu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-stg-cde-eu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-stg-oos-eu"
    },
  }
}

