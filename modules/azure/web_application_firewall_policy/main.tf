resource "azurerm_web_application_firewall_policy" "web_application" {
  name                = var.waf_name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  custom_rules {
    name      = "Block"
    priority  = 1
    rule_type = "MatchRule"

    match_conditions {
      match_variables {
        variable_name = "QueryString"
      }

      operator           = "Contains"
      negation_condition = false
      match_values       = ["blockme"]
    }

    action = "Block"
  }

  policy_settings {
    enabled                     = var.waf_setting_enabled
    mode                        = var.waf_setting_mode
    request_body_check          = var.request_body_check
    file_upload_limit_in_mb     = var.file_upload_limit_in_mb
    max_request_body_size_in_kb = var.max_request_body_size_in_kb
  }

  managed_rules {

    managed_rule_set {
      type    = var.waf_rule_set_type
      version = var.waf_rule_set_version
    }
  }
}