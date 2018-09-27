# Cluster Name
output "name_prefix" {
  description = "Cluster Name"
  value       = "${var.name_prefix}"
}

# Resource Group Name
output "resource_group_name" {
  description = "resource group name"
  value       = "${var.resource_group_name}"
}

# VNet CIDR
output "vnet_cidr" {
  description = "vnet cidr"
  value       = "${var.vnet_cidr}"
}

# Public address prefix
output "public_cidr" {
  description = "public cidr"
  value       = "${var.public_cidr}"
}

# Private address prefix
output "private_cidr" {
  description = "private cidr"
  value       = "${var.private_cidr}"
}

# Public Subnet ID
output "public_subnet_id" {
  description = "public subnet id"
  value       = "${azurerm_subnet.public.id}"
}

# Private Subnet ID
output "private_subnet_id" {
  description = "private subnet id"
  value       = "${azurerm_subnet.private.id}"
}

# Public Subnet Name
output "public_subnet_name" {
  description = "public subnet name"
  value       = "${azurerm_subnet.public.name}"
}

# Private Subnet Name
output "private_subnet_name" {
  description = "private subnet name"
  value       = "${azurerm_subnet.private.name}"
}

# VNet Name
output "name" {
  description = "name"
  value       = "${azurerm_virtual_network.vnet.name}"
}
