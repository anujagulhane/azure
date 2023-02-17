provider "azurerm" {
  features {}
  client_id       = "560f2838-1946-4398-a191-3b7a7c484b66"
  client_secret   = "xfb8Q~GX6ORBXyVnE.n6gcFZj-6Yfs5lUrwoybz-“"
  tenant_id       = "2c5efb81-d32d-4f77-8537-b68dfbea918f"
  subscription_id = "f6e5dcb5-31c7-4f61-b999-2d4d15ac20f3"
}

resource "azurerm_resource_group" "anuja-tf" {
  location = "eastus"
  name     = "anuja-tf"
  tags = {
    Name = "Day"
    Day  = "5"
  }
}
