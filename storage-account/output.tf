output "storage_account_name" {
  value = "${azurerm_storage_account.default.name}"
}

output "primary_access_key" {
  value = "${azurerm_storage_account.default.primary_access_key}"
}
