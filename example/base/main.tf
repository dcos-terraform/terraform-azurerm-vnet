variable "subnet_range" {
}

variable "location" {
}

variable "cluster_name" {
}

variable "name_prefix" {
}

variable "tags" {
  type    = map(string)
  default = {}
}

provider "azurerm" {
  version = "=2.14.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.name_prefix != "" ? "${var.name_prefix}-${var.cluster_name}" : var.cluster_name
  location = var.location
  tags     = var.tags
}

module "network" {
  source = "../../"

  providers = {
    azurerm = azurerm
  }

  subnet_range = var.subnet_range
  cluster_name = var.cluster_name
  name_prefix  = var.name_prefix
  location     = var.location

  resource_group_name = azurerm_resource_group.rg.name
  tags                = var.tags
}

output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "vnet_name" {
  value = module.network.vnet_name
}
