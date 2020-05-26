output "Resource Group ID" {
  description = "The ID of the Virtual Network"
  value       = azurerm_resource_group.main.id
}

output "ARN of App Subnets" {
  value       = azurerm_subnet.app[*].arn
  description = "The ARNs for all subnets"
}
