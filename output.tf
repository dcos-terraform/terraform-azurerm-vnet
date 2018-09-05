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

# Network Instance ID
output "network_security_group_id" {
  value = "${var.network_security_group_id}"
}
