module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "app_configuration" {
  source = "../../modules/azure/app_configuration"

  app_config_name                = var.app_configuration_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  tags                = var.tags
}

module "app_configuration_feature" {
  source = "../../modules/azure/app_configuration_feature"

  appconf_id           = var.appconf_id
  description          = var.description
  label                = var.label
  app_config_feature_name   = var.feature_name
  enabled              = var.feature_enabled
}

module "app_configuration_key" {
  source = "../../modules/azure/app_configuration_key"

  key                  = var.key
  value                = var.value
  appconf_id           = var.appconf_id
}