resource "azurerm_mssql_server" "this" {
  name                         = var.name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  version                      = var.version
  tags                         = var.tags

  identity {
    type = var.identity_type
  }

}
