location        = "eastus"
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
      "10.89.42.5",
      "10.89.42.4",
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
      "10.89.24.0/21",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["10.89.24.0/21"]
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
      "10.89.32.0/21",
      "10.89.24.0/21",
      "10.89.8.0/21",
      "10.89.0.0/21",
      "10.89.16.0/21",
      "10.89.112.0/21",
      "10.89.96.0/21",
      "10.89.104.0/21",
      "10.89.64.0/21",
      "10.89.48.0/21",
      "10.89.56.0/21",
      "10.89.32.0/21",
      "10.89.24.0/21",
      "10.89.40.0/21",
      "10.89.88.0/21",
      "10.89.72.0/21",
      "10.89.80.0/21",
      "10.130.0.0/20",
      "10.88.32.0/20",
      "10.88.0.0/20",
      "10.88.16.0/20",
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
      "10.89.32.0/21",
      "10.89.24.0/21",
      "10.130.0.0/22",
      "10.89.8.0/21",
      "10.89.0.0/21",
      "10.89.16.0/21",
      "10.89.112.0/21",
      "10.89.96.0/21",
      "10.89.104.0/21",
      "10.89.64.0/21",
      "10.89.48.0/21",
      "10.89.56.0/21",
      "10.89.32.0/21",
      "10.89.24.0/21",
      "10.89.40.0/21",
      "10.89.88.0/21",
      "10.89.72.0/21",
      "10.89.80.0/21",
      "10.130.0.0/20",
      "10.88.32.0/20",
      "10.88.0.0/20",
      "10.88.16.0/20",
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
      "10.89.72.0/21",
      "10.89.80.0/21",
      "10.89.88.0/21",
      "10.89.96.0/21",
      "10.89.104.0/21",
      "10.89.112.0/21",
      "10.89.48.0/21",
      "10.89.56.0/21",
      "10.89.64.0/21",
      "10.89.24.0/21",
      "10.89.32.0/21",
      "10.89.40.0/21",
      "10.89.0.0/21",
      "10.89.8.0/21",
      "10.89.16.0/21",
      "10.88.0.0/20",
      "10.88.16.0/20",
      "10.88.32.0/20",
      "10.88.48.0/20",
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
      "10.88.48.0/20",
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
      "10.84.0.0/15",
      "10.88.48.0/20",
      "10.127.0.0/17",
      "35.199.192.0/19",
    ]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["*"]
    name                  = "global-azure-to-onprem"
    protocols             = ["Any"]
    source_addresses = [
      "10.89.72.0/21",
      "10.89.80.0/21",
      "10.89.88.0/21",
      "10.89.96.0/21",
      "10.89.104.0/21",
      "10.89.112.0/21",
      "10.89.48.0/21",
      "10.89.56.0/21",
      "10.89.64.0/21",
      "10.89.24.0/21",
      "10.89.32.0/21",
      "10.89.40.0/21",
      "10.89.0.0/21",
      "10.89.8.0/21",
      "10.89.16.0/21",
      "10.88.0.0/20",
      "10.88.16.0/20",
      "10.88.32.0/20",
      "10.88.48.0/20",
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
      "10.89.72.0/21",
      "10.89.80.0/21",
      "10.89.88.0/21",
      "10.89.96.0/21",
      "10.89.104.0/21",
      "10.89.112.0/21",
      "10.89.48.0/21",
      "10.89.56.0/21",
      "10.89.64.0/21",
      "10.89.24.0/21",
      "10.89.32.0/21",
      "10.89.40.0/21",
      "10.89.0.0/21",
      "10.89.8.0/21",
      "10.89.16.0/21",
      "10.88.0.0/20",
      "10.88.16.0/20",
      "10.88.32.0/20",
      "10.88.48.0/20",
      "10.130.0.0/22",
      "10.89.8.0/21",
      "10.89.0.0/21",
      "10.89.16.0/21",
      "10.89.112.0/21",
      "10.89.96.0/21",
      "10.89.104.0/21",
      "10.89.64.0/21",
      "10.89.48.0/21",
      "10.89.56.0/21",
      "10.89.32.0/21",
      "10.89.24.0/21",
      "10.89.40.0/21",
      "10.89.88.0/21",
      "10.89.72.0/21",
      "10.89.80.0/21",
      "10.130.0.0/20",
      "10.88.32.0/20",
      "10.88.0.0/20",
      "10.88.16.0/20",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["10.89.28.0/23", "10.89.2.0/23"]
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
    destination_addresses = ["10.89.28.0/23", "10.89.2.0/23"]
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
    destination_addresses = ["10.89.24.0/21", "10.89.32.0/21", "10.89.0.0/21", "10.89.8.0/21"]
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
      "10.88.58.0/26",
    ]
    source_ip_groups = null
  },
  {
    collection_name       = "hub"
    destination_addresses = ["10.107.32.212", "10.11.32.148", ]
    destination_fqdns     = null
    destination_ip_groups = null
    destination_ports     = ["13666"]
    name                  = "test-manual-switchboard"
    protocols             = ["TCP"]
    source_addresses      = ["10.89.34.6", "10.89.34.7"]
    source_ip_groups      = null
  },
]

application_rule_collections = [
  {
    action   = "Allow"
    name     = "hub"
    priority = 110
  },
  {
    action   = "Allow"
    name     = "allow-openai"
    priority = 113
  },
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
      "10.89.26.14",
      "10.89.26.22",
      "10.89.26.18",
      "10.89.26.21",
      "10.89.28.6",
      "10.89.26.17",
      "10.89.26.8",
      "10.89.34.5",
      "10.89.26.5",
      "10.89.34.6",
      "10.89.34.9",
      "10.89.34.4",
      "10.89.34.8",
      "10.89.34.7",
      "10.89.42.5",
      "10.89.42.4",
      "10.89.34.10",
      "10.89.34.11",
      "10.89.26.24",
      "10.89.26.27",
      "10.89.26.10",
      "10.89.26.4",
      "10.89.26.13",
      "10.89.26.15",
      "10.89.26.20",
      "10.89.28.4",
      "10.89.26.19",
      "10.89.26.16",
      "10.89.26.12",
      "10.130.0.4",
      "10.130.0.5",
      "10.89.8.0/21",
      "10.89.0.0/21",
      "10.89.16.0/21",
      "10.89.112.0/21",
      "10.89.96.0/21",
      "10.89.104.0/21",
      "10.89.64.0/21",
      "10.89.48.0/21",
      "10.89.56.0/21",
      "10.89.32.0/21",
      "10.89.24.0/21",
      "10.89.40.0/21",
      "10.89.88.0/21",
      "10.89.72.0/21",
      "10.89.80.0/21",
      "10.130.0.0/20",
      "10.88.32.0/20",
      "10.88.0.0/20",
      "10.88.16.0/20",

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
    source_addresses = ["10.89.42.5", ]
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
  {
    collection_name       = "hub"
    destination_addresses = null
    destination_fqdns     = ["packages.microsoft.com", ]
    name                  = "manual-microsoft-packages-speech"
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
    collection_name       = "allow-openai"
    destination_addresses = null
    destination_fqdns     = ["repo.anaconda.com", "echiarchive"]
    name                  = "allow-repo-anaconda"
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
    destination_addresses = "20.39.42.33"
    destination_ports     = ["2353"]
    name                  = "rdp-nat"
    protocols             = ["TCP"]
    source_addresses      = ["*"]
    source_ip_groups      = null
    translated_address    = "10.88.52.5"
    translated_port       = "43389"
  },
  {
    collection_name       = "hub"
    destination_addresses = "20.39.42.33"
    destination_ports     = ["2443"]
    name                  = "tfs-fw-https-superadmin-att"
    protocols             = ["TCP"]
    source_addresses      = ["185.38.203.17"]
    source_ip_groups      = null
    translated_address    = "10.89.42.5"
    translated_port       = "443"
  },
  {
    collection_name       = "hub"
    destination_addresses = "20.39.42.33"
    destination_ports     = ["22"]
    name                  = "ssh-nat"
    protocols             = ["TCP"]
    source_addresses      = ["14.143.179.194"]
    source_ip_groups      = null
    translated_address    = "10.89.34.11"
    translated_port       = "22"
  },
  {
    collection_name       = "hub"
    destination_addresses = "20.39.42.33"
    destination_ports     = ["43389"]
    name                  = "nat-win-rdp"
    protocols             = ["TCP"]
    source_addresses      = ["*"]
    source_ip_groups      = null
    translated_address    = "10.88.52.8"
    translated_port       = "3389"
  },
]
