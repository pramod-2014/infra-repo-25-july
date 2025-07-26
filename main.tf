

resource "azurerm_resource_group" "example" {
  name     = "webapp-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "aadu-storage" {
  depends_on               = [azurerm_resource_group.example]
  name                     = "aadustorageacct"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}