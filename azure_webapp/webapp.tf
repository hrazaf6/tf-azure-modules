resource "azurerm_app_service_plan" "default" {
  name                  = "${var.webapp_service_plan_name}"
  location              = "${var.azurerm_resource_group_default_location}"
  resource_group_name   = "${var.azurerm_resource_group_default_name}"
  sku {
      tier              = "${var.sku_tier}"
      size              = "${var.sku_size}"
  }
}

resource "azurerm_app_service" "default" {
  name = "${var.webapp_service_name}"
  location = "${var.azurerm_resource_group_default_location}"
  resource_group_name = "${var.azurerm_resource_group_default_name}"
  app_service_plan_id = "${azurerm_app_service_plan.default.id}"
  site_config = "${var.site_config}"
  app_settings = "${var.app_settings}"
  connection_string = "${var.connection_string}"
}
