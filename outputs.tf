output "subnet_id" {
  description = "private subnet id"
  value       = "${azurerm_subnet.dcos.id}"
}

output "subnet_name" {
  description = "public subnet name"
  value       = "${azurerm_subnet.dcos.name}"
}
