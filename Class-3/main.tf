terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.47.0"
    }
  }
}

provider "azurerm" {
  features { 
     resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "d91d9d12-3e86-4333-a308-b94e4076556a"
}

/*resource "azurerm_resource_group" "resource_group" {
    name = "aresu"
    location = "Central India"
}*/

resource "azurerm_storage_account" "storage" {
    # Code for Explicit Dependency
   # depends_on = [ azurerm_resource_group.resource_group ]
    name = "astora"
    resource_group_name = "aresu"
    location = "Central India"
    account_tier = "Standard"
    account_replication_type = "LRS"
}