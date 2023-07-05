resource "azurerm_lb" "lb" {
  for_each            = var.lbs[terraform.workspace]
  name                = "tfs-ilb-${each.value.component}-${local.location}-${each.value.product}"
  location            = var.location
  resource_group_name = "tfs-rg-${terraform.workspace}-${local.location}-${each.value.product}"
  sku                 = each.value.sku

  frontend_ip_configuration {
    name                          = "tfs-ilb-${terraform.workspace}-${each.value.component}-${local.location}-${each.value.product}-fip"
    subnet_id                     = data.azurerm_subnet.hub[each.key].id
    private_ip_address_allocation = "dynamic"
  }

  dynamic "backend_address_pool" {
    for_each = each.value.backend_pools
    content {
      name = backend_address_pool.key
    }
  }

  dynamic "probe" {
    for_each = each.value.probes
    content {
      name                      = probe.key
      protocol                  = probe.value.protocol
      port                      = probe.value.port
      interval                  = probe.value.interval
      unhealthy_threshold       = probe.value.unhealthy_threshold
      healthy_threshold         = probe.value.healthy_threshold
      timeout                   = probe.value.timeout
      path                      = probe.value.path
      match = {
        status_codes = probe.value.status_codes
      }
    }
  }

  dynamic "rule" {
    for_each = each.value.rules
    content {
      name                  = rule.key
      frontend_ip_configuration_name = "tfs-ilb-${terraform.workspace}-${each.value.component}-${local.location}-${each.value.product}-fip"
      frontend_port         = rule.value.frontend_port
      backend_port          = rule.value.backend_port
      protocol              = rule.value.protocol
      backend_address_pool_name = rule.value.backend_pool_name
      probe_name            = rule.value.probe_name
    }
  }

  tags = var.tags[terraform.workspace]
}

output "lb_id" {
  value = [
    for lb in azurerm_lb.lb : lb.id
  ]
}

output "lb_name" {
  value = [
    for lb in azurerm_lb.lb : lb.name
  ]
}
