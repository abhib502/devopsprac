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
