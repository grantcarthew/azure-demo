resource "azurerm_cosmosdb_account" "this" {
  name                = "${var.cosmosdb_account_name_prefix}-${random_integer.ri.result}"
  location            = "${azurerm_resource_group.this.location}"
  resource_group_name = "${azurerm_resource_group.this.name}"
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  enable_automatic_failover = true

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    location          = "${azurerm_resource_group.this.location}"
    failover_priority = 0
  }
}
