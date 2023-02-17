provider "azurerm" {
  features {
    
  }
}
resource "azurerm_resource_group" "cosmos" {
  name     = "cosmos"
  location = "East US"
}
