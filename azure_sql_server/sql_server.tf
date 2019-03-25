resource "azurerm_sql_server" "default" {
  name                         = "${var.sql_server_name}"
  resource_group_name          = "${var.azurerm_resource_group_default_name}"
  location                     = "${var.azurerm_resource_group_default_location}"
  version                      = "${var.sql_version}"
  administrator_login          = "${var.administrator_user}"
  administrator_login_password = "${var.administrator_password}"
}
