terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d91d9d12-3e86-4333-a308-b94e4076556a"
}

resource "azurerm_resource_group" "rg_block" {
  name     = "abhig"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg" {
  depends_on               = [azurerm_resource_group.rg_block]
  resource_group_name      = "abhirg"
  name                     = "abhistg"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}