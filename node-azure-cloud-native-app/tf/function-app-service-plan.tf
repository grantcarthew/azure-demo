resource "azurerm_app_service_plan" "this" {
  name                = "${var.app_name}-functions-service-plan"
  location            = "${azurerm_resource_group.this.location}"
  resource_group_name = "${azurerm_resource_group.this.name}"
  kind                = "FunctionApp"

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}
