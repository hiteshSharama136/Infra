module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name     = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "key_vault" {
  source = "../../modules/azure/key_vault"

  key_vault_name      = var.key_vault_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  tenant_id           = var.tenant_id
  sku_name            = var.sku_name
  tags                = var.tags
}

module "key_vault_secrets" {
  source = "../../modules/azure/key_vault_secrets"

  key_vault_id = module.key_vault.key_vault_id
  secrets      = var.secrets
}
