# resource "azurerm_virtual_network" "test" {
#  name                 = "${var.vm_name}-${var.resource_type}"
#  address_space        = var.address_space
#  location             = var.location
#  resource_group_name  = var.resource_group
#
#  tags = {
#    Environment = var.isproduction == false ? "Development" : "Production"
#  }
# }

data "azurerm_subnet" "test" {
  name                 = "${var.virtual_network_name}"
  resource_group_name  = var.resource_group
  virtual_network_name = "${var.virtual_network_name}"
  # address_prefixes     = var.address_prefixes
}