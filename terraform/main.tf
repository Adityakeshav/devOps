provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myResourceGroup"
  location = "Central India"  # Updated to Central India
}

resource "azurerm_container_group" "aci" {
  name                = "mycontainer"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  os_type             = "Linux"

  container {
    name   = "mycontainer"
    image  = "adityakeshav/flask-app:0.0.3"  # Replace with your Docker image
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 5000
      protocol = "TCP"
    }
  }
}