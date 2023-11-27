resource "azurerm_resource_group" "siri_rg" {
  name     = var.siri_name
  location = "East US"
}