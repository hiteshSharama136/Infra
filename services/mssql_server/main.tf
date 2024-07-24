module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "mssql_server" {
  source = "../../modules/azure/mssql_server"

  mssql_server_name             = var.mssql_server_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  administrator_login           = var.administrator_login
  administrator_login_password  = var.administrator_login_password
  tags                          = var.tags
}
