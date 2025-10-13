resource "azurerm_storage_account" "stgb" {
  name = "abhistrgb"
  resource_group_name = "abhirgb"
  location = "Central India"
  account_tier = "Standard"
  account_replication_type = "LRS"
}