location = "westus"
nsg      = ""
nsg_rule = {
  "allow_management_inbound" = {
    name                       = "allow_management_inbound"
    priority                   = 106
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["9000", "9003", "1438", "1440", "1452"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "allow_misubnet_inbound" = {
    name                       = "allow_misubnet_inbound"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_ranges    = ["0-65535"]
    source_address_prefix      = "10.0.0.0/24"
    destination_address_prefix = "*"
  }
  "allow_health_probe_inbound" = {
    name                       = "allow_health_probe_inbound"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_ranges    = ["0-65535"]
    source_address_prefix      = "AzureLoadBalancer"
    destination_address_prefix = "*"
  }
  "allow_tds_inbound" = {
    name                       = "allow_tds_inbound"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["1433"]
    source_address_prefix      = "VirtualNetwork"
    destination_address_prefix = "*"
  }
  "deny_all_inbound" = {
    name                       = "deny_all_inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_ranges    = ["0-65535"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "allow_management_outbound" = {
    name                       = "allow_management_outbound"
    priority                   = 102
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["80", "443", "12000"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "allow_misubnet_outbound" = {
    name                       = "allow_misubnet_outbound"
    priority                   = 200
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_ranges    = ["0-65535"]
    source_address_prefix      = "10.0.0.0/24"
    destination_address_prefix = "*"
  }
  "deny_all_outbound" = {
    name                       = "deny_all_outbound"
    priority                   = 4096
    direction                  = "Outbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_ranges    = ["0-65535"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
