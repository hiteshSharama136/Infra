resource "azurerm_mssql_server" "mssql" {
  name                         = var.mssql_server_name
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

resource "azurerm_sql_firewall_rule" "allow_all_ips" {
  name                = "AllowAllIPs"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mssql_server.mssql.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}