terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.47.0"
    }
  }
  # Backend block code for storing tfstate file on remote.
  backend "azurerm" {
    resource_group_name = "argb"
    storage_account_name = "astgb"
    container_name = "astate"
    key = "shashiterra.tfstate"
  }
}

provider "azurerm" {
  features { }
  subscription_id = "d91d9d12-3e86-4333-a308-b94e4076556a"
}

resource "azurerm_resource_group" "rgb" {
    name = "argb"
    location = "Central India"
}

resource "azurerm_storage_account" "stgb" {
    # Code for Explicit Dependency
    depends_on = [ azurerm_resource_group.rgb ]
    name = "astgb"
    resource_group_name = "argb"
    location = "Central India"
    account_tier = "Standard"
    account_replication_type = "LRS"
}