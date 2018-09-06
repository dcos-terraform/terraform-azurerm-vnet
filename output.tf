# Cluster Name
output "name_prefix" {
  value = "${var.name_prefix}"
}

# Resource Group Name
output "resource_group_name" {
  value = "${var.resource_group_name}"
}

# VNet CIDR
output "vnet_cidr" {
  value = "${var.vnet_cidr}"
}

# Public address prefix
output "public_cidr" {
  value = "${var.public_cidr}"
}

# Private address prefix
output "private_cidr" {
  value = "${var.private_cidr}"
}

# Public Subnet ID
output "public_subnet_id" {
  value = "${azurerm_subnet.public.id}"
}

# Private Subnet ID
output "private_subnet_id" {
  value = "${azurerm_subnet.private.id}"
}

# Public Subnet Name
output "public_subnet_name" {
  value = "${azurerm_subnet.public.name}"
}

# Private Subnet Name
output "private_subnet_name" {
  value = "${azurerm_subnet.private.name}"
}

# VNet Name
output "name" {
  value = "${azurerm_virtual_network.vnet.name}"
}
