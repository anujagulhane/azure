provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "anuja-tf" {
  location = "eastus"
  name = "anuja-tf"
  tags = {
    Name = "Day"
    Day = "5"
  }
}