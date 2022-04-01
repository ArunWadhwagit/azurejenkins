resource "azurerm_resource_group" "rgforjenkins" {
  name     = "rgforjenkins"
  location = "eastus"
}
resource "azurerm_availability_set" "avsetjenkins" {
  name                = "jenkins-aset"
  location            = azurerm_resource_group.rgforjenkins.location
  resource_group_name = azurerm_resource_group.rgforjenkins.name
}
