/**
 * [![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-vnet/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-vnet/job/master/)
 *
 * # DC/OS VNET
 * This is an module to create a Azure VNET specially used for DC/OS
 *
 * ## EXAMPLE
 *
 * ```hcl
 * module "dcos-vnet" {
 *   source  = "dcos-terraform/vnet/azurerm"
 *   version = "~> 0.1"
 *
 *   location = "West US"
 *   private_cidr = "10.32.4.0/22"
 *   public_cidr = "10.32.0.0/22"
 *   resource_group_name = "test"
 *   ...
 * }
 * ```
 */

provider "azurerm" {}

# Unique name required for the storage account
resource "random_id" "id" {
  byte_length = 2
}

# Create a virtual network in the web_servers resource group
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${format(var.hostname_format, count.index + 1, var.name_prefix)}"
  address_space       = ["${var.vnet_cidr}"]
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"

  tags = "${merge(var.tags, map("Name", format(var.hostname_format, (count.index + 1), var.location, var.name_prefix),
                                "Cluster", var.name_prefix))}"
}

resource "azurerm_subnet" "public" {
  name                 = "public"
  address_prefix       = "${var.public_cidr}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${var.resource_group_name}"
}

resource "azurerm_subnet" "private" {
  name                 = "private"
  address_prefix       = "${var.private_cidr}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${var.resource_group_name}"
}

resource "azurerm_storage_account" "dcos-exhibitor-account" {
  name                     = "tf${random_id.id.hex}exhibitor"
  resource_group_name      = "${var.resource_group_name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = "${merge(var.tags, map("Name", format(var.hostname_format, (count.index + 1), var.location, var.name_prefix),
                                "Cluster", var.name_prefix))}"
}
