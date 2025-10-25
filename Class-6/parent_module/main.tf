module "rg" {
    source = "../modules/azurerm_resource_group"
}

module "str" {
    depends_on = [ module.rg ]
    source = "../modules/azurerm_storage_account"
}