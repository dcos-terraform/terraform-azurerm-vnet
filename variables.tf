# VNet CIDR
variable "vnet_cidr" {
  default = "10.32.0.0/16"
}

# Public address prefix
variable "public_cidr" {
  default = "10.32.0.0/22"
}

# Private address prefix
variable "private_cidr" {
  default = "10.32.4.0/22"
}

# Location (region)
variable "location" {}

# Cluster Name
variable "name_prefix" {}

# Resource Group Name
variable "resource_group_name" {}

# Add special tags to the resources created by this module
variable "tags" {
  type    = "list"
  default = []
}

# Format the hostname inputs are index+1, region, name_prefix
variable "hostname_format" {
  default = "network-%[1]d-%[2]s"
}
