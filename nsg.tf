esource "azurerm_network_security_group" "app" {
  name                = "${var.prefix}-app"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  security_rule {
    name                       = "${var.prefix}-app-ssh-http-https"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22,80,443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "staging"
	user_name = var.tag_user_name
  }
}

# NSG association with Network Interface
#resource "azurerm_network_interface_security_group_association" "main" {
#  network_interface_id      = azurerm_network_interface.main.id
#  network_security_group_id = azurerm_network_security_group.app.id
#}

# NSG association with single Subnet
#resource "azurerm_subnet_network_security_group_association" "main" {
#  subnet_id                 = azurerm_subnet.app.id
#  network_security_group_id = azurerm_network_security_group.app.id
#}

# NSG association with Multiple Subnet
resource "azurerm_subnet_network_security_group_association" "app" {
  count = length(var.subnet_app)
  subnet_id                 = azurerm_subnet.app[count.index].id
  network_security_group_id = azurerm_network_security_group.app.id  
}
