resource "azurerm_linux_virtual_machine" "vm" {
  name     = "myTFvm"
  location = azurerm_resource_group.rg.location

  resource_group_name             = azurerm_resource_group.rg.name
  size                            = "Standard_B1ls"
  admin_username                  = "adminsrinivas"
  admin_password                  = "Srinvas123" #hardcoded for now, will secure later
  disable_password_authentication = "false"
  network_interface_ids           = [azurerm_network_interface.network-interface.id]
  os_disk {
    caching              = "None"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

}
