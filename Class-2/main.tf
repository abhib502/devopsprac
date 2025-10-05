terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.47.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d91d9d12-3e86-4333-a308-b94e4076556a"
}

resource "azurerm_resource_group" "rg" {
    name = "abhi_rg"
    location = "Central India"  
}

resource "azurerm_storage_account" "stg_block" {
  name = "abhishashi"
  location = "Central India"
  resource_group_name = azurerm_resource_group.rg.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}
