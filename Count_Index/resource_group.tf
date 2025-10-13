resource "azurerm_resource_group" "rgb" {
  count = 6
  name = var.rg_name ${count.index}
  location = "Central India"
}