resource "azurerm_function_app" "this" {
  name                      = "${var.app_name}-functions-app-service-${random_integer.ri.result}"
  location                  = "${azurerm_resource_group.this.location}"
  resource_group_name       = "${azurerm_resource_group.this.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.this.id}"
  storage_connection_string = "${azurerm_storage_account.this.primary_connection_string}"
}
