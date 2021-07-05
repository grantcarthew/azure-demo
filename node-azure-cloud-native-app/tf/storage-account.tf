resource "azurerm_storage_account" "this" {
  name                     = "${var.storage_account_name_prefix}${random_integer.ri.result}"
  resource_group_name      = "${azurerm_resource_group.this.name}"
  location                 = "${azurerm_resource_group.this.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
