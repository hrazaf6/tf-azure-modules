resource "azurerm_virtual_network" "default" {
  name                = "${var.vnet_name}"
  location            = "${var.location}"
  address_space       = ["${var.vnet_address_space}"]
  resource_group_name = "${var.resource_group_name}"
  tags                = "${var.tags}"
}