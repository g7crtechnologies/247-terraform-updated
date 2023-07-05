location        = "westus"
public_ip_names = ["fw-public", "fw-private"]
priority        = 100
network_rule_collections = [
  {
    action   = "Allow"
    name     = "hub"
    priority = 105
  }
]

network_rules = [
  {
    collection_name       = "hub"
    destination_addresses = ["168.63.129.16"]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["53"]
    name                  = "Net-Coll01"
    protocols             = ["UDP"]
    source_addresses      = ["*"]
    source_ip_groups      = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["185.38.203.17"]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["443"]
    name                  = "att-out-https"
    protocols             = ["TCP"]
    source_addresses = [
      "10.87.42.5",
      "10.87.42.4",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["10.20.241.66"]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["*"]
    name                  = "icmp-audiocodes-outbound"
    protocols             = ["ICMP"]
    source_addresses = [
      "10.87.24.0/21",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["10.87.24.0/21"]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["*"]
    name                  = "icmp-audiocodes-inbound"
    protocols             = ["ICMP"]
    source_addresses = [
      "10.20.241.66",
    ]
    source_ip_groups = null
  },
  {
    collection_name = "hub"
    destination_addresses = [
      "10.87.32.0/21",
      "10.87.24.0/21",
      "10.86.16.0/20",
      "10.86.0.0/20",
      "10.86.32.0/21",
      "10.87.80.0/21",
      "10.87.72.0/21",
      "10.87.88.0/21",
      "10.87.104.0/21",
      "10.87.96.0/21",
      "10.87.112.0/21",
      "10.87.8.0/21",
      "10.87.0.0/21",
      "10.87.16.0/21",
      "10.87.56.0/21",
      "10.87.48.0/21",
      "10.87.64.0/21",
    ]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["*"]
    name                  = "icmp-onprem-azure"
    protocols             = ["ICMP"]
    source_addresses = [
      "10.64.0.0/16",
    ]
    source_ip_groups = null
  },
  {
    collection_name = "hub"
    destination_addresses = [
      "10.87.32.0/21",
      "10.87.24.0/21",
      "10.130.0.0/22",
      "10.86.16.0/20",
      "10.86.0.0/20",
      "10.86.32.0/21",
      "10.87.80.0/21",
      "10.87.72.0/21",
      "10.87.88.0/21",
      "10.87.104.0/21",
      "10.87.96.0/21",
      "10.87.112.0/21",
      "10.87.8.0/21",
      "10.87.0.0/21",
      "10.87.16.0/21",
      "10.87.56.0/21",
      "10.87.48.0/21",
      "10.87.64.0/21",
    ]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["22"]
    name                  = "ssh-onprem-azure"
    protocols             = ["TCP"]
    source_addresses = [
      "10.64.0.0/16",
    ]
    source_ip_groups = null
  },
  {
    collection_name = "hub"
    destination_addresses = [
      "10.87.72.0/21",
      "10.87.80.0/21",
      "10.87.88.0/21",
      "10.87.96.0/21",
      "10.87.104.0/21",
      "10.87.112.0/21",
      "10.87.48.0/21",
      "10.87.56.0/21",
      "10.87.64.0/21",
      "10.87.24.0/21",
      "10.87.32.0/21",
      "10.87.40.0/21",
      "10.87.0.0/21",
      "10.87.8.0/21",
      "10.87.16.0/21",
      "10.86.0.0/20",
      "10.86.16.0/20",
      "10.86.32.0/20",
      "10.86.48.0/20",
      "10.130.0.0/22",
    ]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["*"]
    name                  = "global-onprem-to-azure"
    protocols             = ["Any"]
    source_addresses = [
      "10.31.0.0/17",
      "10.64.0.0/16",
      "10.65.0.0/16",
      "10.67.0.0/16",
      "10.80.0.0/15",
      "10.84.0.0/15",
      "10.86.48.0/20",
      "10.127.0.0/17",
      "35.199.192.0/19",
    ]
    source_ip_groups = null
  },
  {
    collection_name = "hub"
    destination_addresses = [
      "10.31.0.0/17",
      "10.64.0.0/16",
      "10.65.0.0/16",
      "10.67.0.0/16",
      "10.80.0.0/15",
      "10.63.0.62/32",
      "10.84.0.0/15",
      "10.86.48.0/20",
      "10.127.0.0/17",
      "35.199.192.0/19",
    ]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["*"]
    name                  = "global-azure-to-onprem"
    protocols             = ["Any"]
    source_addresses = [
      "10.87.72.0/21",
      "10.87.80.0/21",
      "10.87.88.0/21",
      "10.87.96.0/21",
      "10.87.104.0/21",
      "10.87.112.0/21",
      "10.87.48.0/21",
      "10.87.56.0/21",
      "10.87.64.0/21",
      "10.87.24.0/21",
      "10.87.32.0/21",
      "10.87.40.0/21",
      "10.87.0.0/21",
      "10.87.8.0/21",
      "10.87.16.0/21",
      "10.86.0.0/20",
      "10.86.16.0/20",
      "10.86.32.0/20",
      "10.86.48.0/20",
      "10.130.0.0/22",
    ]
    source_ip_groups = null
  },
  {
    collection_name = "hub"
    destination_addresses = [
      "169.254.169.254",
      "168.63.129.16",
    ]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["*"]
    name                  = "azure-to-imds-meta"
    protocols             = ["Any"]
    source_addresses = [
      "10.87.72.0/21",
      "10.87.80.0/21",
      "10.87.88.0/21",
      "10.87.96.0/21",
      "10.87.104.0/21",
      "10.87.112.0/21",
      "10.87.48.0/21",
      "10.87.56.0/21",
      "10.87.64.0/21",
      "10.87.24.0/21",
      "10.87.32.0/21",
      "10.87.40.0/21",
      "10.87.0.0/21",
      "10.87.8.0/21",
      "10.87.16.0/21",
      "10.86.0.0/20",
      "10.86.16.0/20",
      "10.86.32.0/20",
      "10.86.48.0/20",
      "10.130.0.0/22",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["10.87.28.0/23"]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["5060"]
    name                  = "app-sip"
    protocols             = ["UDP"]
    source_addresses = [
      "10.128.0.8/29",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["10.87.28.0/23"]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["10000", "30000"]
    name                  = "app-rtp"
    protocols             = ["UDP"]
    source_addresses = [
      "10.128.0.8/29",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["10.87.24.0/21", "10.87.32.0/21"]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["4000", "6060", "8080"]
    name                  = "app-service-statusd-nsp"
    protocols             = ["TCP"]
    source_addresses = [
      "10.64.0.0/16",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["*"]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["*"]
    name                  = "azure-bastion"
    protocols             = ["Any"]
    source_addresses = [
      "10.86.58.0/26",
    ]
    source_ip_groups = null
  },
]

application_rule_collections = [
  {
    action   = "Allow"
    name     = "hub"
    priority = 110
  }
]

app_rules = [
  {
    collection_name       = "hub"
    destination_addresses = null
    destination_fqdns     = ["proxy01-east.infra.cloud.247-inc.net"]
    name                  = "247-internal"
    protocols = [
      {
        port = 80
        type = "Http"
      },
      {
        port = 443
        type = "Https"
      },
    ]
    source_addresses = ["*"]
    source_ip_groups = null
    web_categories   = null
  },
  {
    collection_name       = "hub"
    destination_addresses = null
    destination_fqdns     = ["*.google.com", "*.google.co.in", "google.com"]
    name                  = "google.com"
    protocols = [
      {
        port = 80
        type = "Http"
      },
      {
        port = 443
        type = "Https"
      },
    ]
    source_addresses = ["*"]
    source_ip_groups = null
    web_categories   = null
  },
  {
    collection_name       = "hub"
    destination_addresses = null
    destination_fqdns     = ["ts01-b.cloudsink.net", "lfodown01-b.cloudsink.net"]
    name                  = "crowdstrike"
    protocols = [
      {
        port = 443
        type = "Https"
      },
    ]
    source_addresses = [
      "10.87.26.14",
      "10.87.26.22",
      "10.87.26.18",
      "10.87.26.21",
      "10.87.28.6",
      "10.87.26.17",
      "10.87.26.8",
      "10.87.34.5",
      "10.87.26.5",
      "10.87.34.6",
      "10.87.34.9",
      "10.87.34.4",
      "10.87.34.8",
      "10.87.34.7",
      "10.87.42.5",
      "10.87.42.4",
      "10.87.34.10",
      "10.87.34.11",
      "10.87.26.24",
      "10.87.26.27",
      "10.87.26.10",
      "10.87.26.4",
      "10.87.26.13",
      "10.87.26.15",
      "10.87.26.20",
      "10.87.28.4",
      "10.87.26.19",
      "10.87.26.16",
      "10.87.26.12",
      "10.130.0.4",
      "10.130.0.5",
      "10.86.16.0/20",
      "10.86.0.0/20",
      "10.86.32.0/21",
      "10.87.80.0/21",
      "10.87.72.0/21",
      "10.87.88.0/21",
      "10.87.104.0/21",
      "10.87.96.0/21",
      "10.87.112.0/21",
      "10.87.8.0/21",
      "10.87.0.0/21",
      "10.87.16.0/21",
      "10.87.56.0/21",
      "10.87.48.0/21",
      "10.87.64.0/21",
    ]
    source_ip_groups = null
    web_categories   = null
  },
  {
    collection_name       = "hub"
    destination_addresses = null
    destination_fqdns     = ["packages.microsoft.com", "*.guestconfiguration.azure.com", "*.blob.core.windows.net"]
    name                  = "packages-microsoft"
    protocols = [
      {
        port = 443
        type = "Https"
      },
    ]
    source_addresses = ["*"]
    source_ip_groups = null
    web_categories   = null
  },
  {
    collection_name       = "hub"
    destination_addresses = null
    destination_fqdns     = ["185.38.203.17"]
    name                  = "allow-superadmin-att"
    protocols = [
      {
        port = 443
        type = "Https"
      },
    ]
    source_addresses = ["10.87.42.5", ]
    source_ip_groups = null
    web_categories   = null
  },
  {
    collection_name       = "hub"
    destination_addresses = null
    destination_fqdns     = ["nexus.infra.cloud.247-inc.net"]
    name                  = "allow-nexus"
    protocols = [
      {
        port = 443
        type = "Https"
      },
    ]
    source_addresses = ["*"]
    source_ip_groups = null
    web_categories   = null
  },
  {
    collection_name       = "hub"
    destination_addresses = null
    destination_fqdns     = ["rockylinux.org", "mirrors.rockylinux.org", "atl.mirrors.clouvider.net", ]
    name                  = "allow-rocky-linux9"
    protocols = [
      {
        port = 80
        type = "Http"
      },
      {
        port = 443
        type = "Https"
      },
    ]
    source_addresses = ["*"]
    source_ip_groups = null
    web_categories   = null
  },
]

nat_rule_collections = [
  {
    action   = "Dnat"
    name     = "hub"
    priority = 100
  }
]

nat_rules = [
  {
    collection_name       = "hub"
    destination_addresses = "168.61.70.23"
    destination_ports     = ["53"]
    name                  = "rdp-nat"
    protocols             = ["TCP"]
    source_addresses      = ["*"]
    source_ip_groups      = null
    translated_address    = "8.8.8.8"
    translated_port       = "3389"
  },
  {
    collection_name       = "hub"
    destination_addresses = "168.61.70.23"
    destination_ports     = ["53"]
    name                  = "mgmt-nat"
    protocols             = ["TCP"]
    source_addresses      = ["*"]
    source_ip_groups      = null
    translated_address    = "8.8.8.8"
    translated_port       = "8080"
  }
]



