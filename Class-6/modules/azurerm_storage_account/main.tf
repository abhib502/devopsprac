resource "azurerm_storage_account" "stg" {
    name = "abhichsh"
    location = "West Europe"
    resource_group_name = "abhirg"
    account_tier = "Standard"
    account_replication_type = "LRS"
}