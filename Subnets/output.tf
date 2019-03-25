output "vnet_agent_subnet_id" {
  value = "${azurerm_subnet.default.*.id}"
}
