resource "azurerm_resource_group" "rg" {
    count = length(var.rg_name)
    name = var.rg_name[count.index]
    location = "Central India"
}