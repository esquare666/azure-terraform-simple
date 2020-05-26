output "azurerm_resource_group" {
  description = "The ID of the Virtual Network"
  value       = aws_vpc.main.id
}
