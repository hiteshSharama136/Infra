# Azure App Service Terraform Module

This Terraform module creates an Azure App Service and its associated App Service Plan.

### Basic Usage Creating an Azure App Service 

module "app_service" {
  source                   = "path_to_your_module"

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

