module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name     = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "azure_application_gateway" {
  source = "../../modules/azure/application_gateway"

  app_gateway_name                = var.application_gateway
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  sku_name            = var.sku_name
  sku_tier            = var.sku_tier
  sku_capacity        = var.sku_capacity
  subnet_id           = var.subnet_id
  frontend_port       = var.frontend_port
  public_ip_address_id = var.public_ip_address_id
  tags                = var.tags
  backend_http_settings_name  = var.backend_http_settings_name 
  http_listener_protocol  =  var.http_listener_protocol   
  frontend_port_name  = var.frontend_port_name  
  backend_http_settings_port  = var.backend_http_settings_port   
  request_routing_rule_name  = var.request_routing_rule_name   
  backend_http_settings_cookie_based_affinity = var.backend_http_settings_cookie_based_affinity   
  backend_http_settings_protocol  =  var.backend_http_settings_protocol   
  gateway_ip_configuration_name  = var.gateway_ip_configuration_name  
  backend_http_settings_request_timeout  = var.backend_http_settings_request_timeout  
  frontend_ip_configuration_name  = var.frontend_ip_configuration_name   
  http_listener_name   =  var.http_listener_name   
  request_routing_rule_type  = var.request_routing_rule_type   
  backend_address_pool_name  = var.backend_address_pool_name
}

