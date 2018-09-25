# VNet CIDR
variable "vnet_cidr" {
  description = "vnet cidr"
  default = "10.32.0.0/16"
}

# Public address prefix
variable "public_cidr" {
  description = "public cidr"
  default = "10.32.0.0/22"
}

# Private address prefix
variable "private_cidr" {
  description = "private cidr"
  default = "10.32.4.0/22"
}

# Location (region)
variable "location" {
  description = "location"
}

# Cluster Name
variable "name_prefix" {
  description = "Cluster Name"
}

# Resource Group Name
variable "resource_group_name" {
  description = "resource group name"
}

# Add special tags to the resources created by this module
variable "tags" {
  description = "Add custom tags to all resources"
  type    = "map"
  default = {}
}

# Format the hostname inputs are index+1, region, name_prefix
variable "hostname_format" {
  description = "Format the hostname inputs are index+1, region, cluster_name"
  default = "network-%[1]d-%[2]s"
}
