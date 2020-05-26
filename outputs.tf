output "Resource_Group_ID" {
  description = "The ID of the Virtual Network"
  value       = azurerm_resource_group.main.id
}

output "App_Subnets_ID" {
  value       = azurerm_subnet.app[*].id
  description = "The ARNs for all subnets"
}
