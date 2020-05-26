provider "azurerm" {
  version = "=1.44.0"

  subscription_id = "d52515da-685f-492c-8a14-0fdc40819e4f"
  tenant_id       = "ecf8325f-91c3-4262-8fcf-8ca81cd0f45e"
}

# Create a resource group
resource "azurerm_resource_group" "main" {
  name     = ${var.prefix}rg
  location = ${var.azure_region}
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "main" {
  name                = ${var.prefix}vnet
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.0.0.0/16"]
}
