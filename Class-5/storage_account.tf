resource "azurerm_storage_account" "stgb" {
  name = "abhistgb"
  resource_group_name = azurerm_resource_group.rgb.name
  location = azurerm_resource_group.rgb.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}