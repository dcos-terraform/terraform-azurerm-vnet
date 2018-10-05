# VNet CIDR
variable "subnet_range" {
  description = "vnet cidr"
  default     = "172.31.0.0/16"
}

# Location (region)
variable "location" {
  description = "location"
}

# Cluster Name
variable "cluster_name" {
  description = "Cluster Name"
}

# Resource Group Name
variable "resource_group_name" {
  description = "resource group name"
}

# Add special tags to the resources created by this module
variable "tags" {
  description = "Add custom tags to all resources"
  type        = "map"
  default     = {}
}
