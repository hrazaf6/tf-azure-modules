resource "azurerm_scheduler_job_collection" "default" {
  name                          = "${var.scheduler_name}"
  resource_group_name           = "${var.azurerm_resource_group_default_name}"
  location                      = "${var.azurerm_resource_group_default_location}"
  sku                           = "${var.scheduler_sku}"
  state                         = "${var.scheduler_state}"

  quota {
    max_job_count            = "${var.scheduler_max_job_count}"
    max_recurrence_interval  = "${var.scheduler_max_recurrence_interval}"
    max_recurrence_frequency = "${var.scheduler_max_recurrence_frequency}"
  }
}