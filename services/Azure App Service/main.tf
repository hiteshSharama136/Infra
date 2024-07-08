module "resource_group" {
  source = "../../modules/azure/resource_group"

  name = var.name
  location            = var.location
  tags = var.tags
}

module "app_service" {
  source = "../../modules/azure/app_service"

  app_service_plan_name = var.app_service_plan_name
  location              = module.resource_group.location
  resource_group_name   = module.resource_group.resource_group_name
  sku_tier              = var.sku_tier
  sku_size              = var.sku_size
  app_service_name      = var.app_service_name
  always_on             = var.always_on
  app_settings          = var.app_settings
  tags                  = var.tags
}
