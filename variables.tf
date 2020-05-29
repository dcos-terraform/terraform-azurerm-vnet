variable "subnet_range" {
  description = "Private IP space to be used in CIDR format"
  default     = "172.12.0.0/16"
}

variable "location" {
  description = "Azure Region"
}

variable "cluster_name" {
  description = "Name of the DC/OS cluster"
}

variable "name_prefix" {
  description = "Name Prefix"
  default     = ""
}

variable "resource_group_name" {
  description = "Name of the azure resource group"
}

variable "tags" {
  description = "Add custom tags to all resources"
  type        = map(string)
  default     = {}
}

