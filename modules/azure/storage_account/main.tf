resource "azurerm_storage_account" "st" {
  name                     = var.st_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    Env         = var.tags.Env
    App         = var.tags.App
  }
}