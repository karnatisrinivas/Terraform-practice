resource "azurerm_network_interface" "network-interface" {
  name     = "nic"
  location = azurerm_resource_group.rg.location

  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }

}
