output "subnet_id" {
  description = "Subnet ID"
  value       = azurerm_subnet.dcos.id
}

output "subnet_name" {
  description = "public subnet name"
  value       = azurerm_subnet.dcos.name
}

output "resource_group_name" {
  description = "Name of the azure resource group"
  value       = var.resource_group_name
}

output "vnet_id" {
  description = "ID of the VNET"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "Name of the VNET"
  value       = azurerm_virtual_network.vnet.name
}