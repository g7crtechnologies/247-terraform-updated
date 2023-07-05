
output "rg_name" {
  value = local.rg.0
  description = "resoucrce group name output for remotstate call"
}

output "rg" {
  value = [for name in azurerm_resource_group.infra : name.name]
}