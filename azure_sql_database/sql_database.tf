resource "azurerm_sql_database" "default" {
  name                = "${var.sql_database_name}"
  resource_group_name = "${var.azurerm_resource_group_default_name}"
  location            = "${var.azure_lazurerm_resource_group_default_location}"
  server_name         = "${var.azurerm_sql_server_default_name}"

  tags {
    environment = "${var.environment}"
  }
}