provider "azurerm" {
  features {}
  client_id       = "560f2838-1946-4398-a191-3b7a7c484b66"
  client_secret   = "xfb8Q~GX6ORBXyVnE.n6gcFZj-6Yfs5lUrwoybz-"
  tenant_id       = "2c5efb81-d32d-4f77-8537-b68dfbea918f"
  subscription_id = "f6e5dcb5-31c7-4f61-b999-2d4d15ac20f3"
}
variable "location" {
  default = "eastus"
}
variable "name" {
  default = "anuja-tf"
}
resource "azurerm_resource_group" "anuja-tf" {
  location = var.location
  name     = var.name
  tags = {
    Name = "Day"
    Day  = "5"
  }
}

resource "azurerm_cosmosdb_account" "GlobalDocumentDB" {
  name                      = var.name
  location                  = var.location
  resource_group_name       = azurerm_resource_group.anuja-tf.name
  offer_type                = "Standard"
  kind                      = "GlobalDocumentDB"
  enable_automatic_failover = false
  geo_location {
    location          = var.location
    failover_priority = 0
  }
  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }
}
