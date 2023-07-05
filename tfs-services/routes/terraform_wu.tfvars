location = "westus"
routes = {
  # this the routing association from spoke network to azure firewall
  hub = {

    "route-01" = {
      name                   = "route-01"
      address_prefix         = "10.86.52.0/22"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-02" = {
      name                   = "route-02"
      address_prefix         = "10.87.24.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-03" = {
      name                   = "route-03"
      address_prefix         = "10.87.72.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-04" = {
      name                   = "route-04"
      address_prefix         = "10.87.80.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-05" = {
      name                   = "route-05"
      address_prefix         = "10.87.88.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-06" = {
      name                   = "route-06"
      address_prefix         = "10.87.96.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-18" = {
      name                   = "route-18"
      address_prefix         = "10.86.32.0/20"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-07" = {
      name                   = "route-07"
      address_prefix         = "10.87.104.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-08" = {
      name                   = "route-08"
      address_prefix         = "10.87.112.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-09" = {
      name                   = "route-09"
      address_prefix         = "10.87.48.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-17" = {
      name                   = "route-17"
      address_prefix         = "10.86.16.0/20"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-10" = {
      name                   = "route-10"
      address_prefix         = "10.87.56.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-11" = {
      name                   = "route-11"
      address_prefix         = "10.87.64.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-16" = {
      name                   = "route-16"
      address_prefix         = "10.86.0.0/20"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-12" = {
      name                   = "route-12"
      address_prefix         = "10.87.32.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-15" = {
      name                   = "route-15"
      address_prefix         = "10.87.16.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-13" = {
      name                   = "route-13"
      address_prefix         = "10.87.0.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-14" = {
      name                   = "route-14"
      address_prefix         = "10.87.8.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-20" = {
      name                   = "route-20"
      address_prefix         = "10.86.61.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-21" = {
      name                   = "route-21"
      address_prefix         = "10.87.40.0/21"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-dns-inbound-hub" = {
      name                   = "route-dns-inbound-hub"
      address_prefix         = "10.86.59.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-dns-inbound-wu"
    },

    "route-dns-outbound-hub" = {
      name                   = "route-dns-outbound-hub"
      address_prefix         = "10.86.60.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-dns-outbound-wu"
    },

    "route-lb-hub" = {
      name                   = "route-lb-hub"
      address_prefix         = "10.86.57.0/24"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },

    "route-22" = {
      name                   = "route-22"
      address_prefix         = "10.130.0.0/22"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-hub-er-wu"
    },
  }

  "prod" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.88.48.4"
      route_table_name       = "tfs-rt-prod-c2c-wu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-prod-cde-wu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-prod-oos-wu"
    },
  },

  "psr" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-psr-c2c-wu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-psr-cde-wu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-psr-oos-wu"
    },
  },

  "dev" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-dev-c2c-wu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-dev-cde-wu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-dev-oos-wu"
    },
  },

  "qa" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-qa-c2c-wu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-qa-cde-wu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-qa-oos-wu"
    },
  },

  "stg" = {
    "c2c" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-stg-c2c-wu"
    },
    "cde" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-stg-cde-wu"
    },
    "oos" = {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.86.48.4"
      route_table_name       = "tfs-rt-stg-oos-wu"
    },
  }
}


