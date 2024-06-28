# Azure Web Application Firewall (WAF) Policy Terraform Module

This Terraform module provisions an Azure Web Application Firewall (WAF) Policy with custom rules and managed rule sets.

## Usage

module "azurerm_web_application_firewall_policy" {
  name                = "waf-policy-example"
  resource_group_name = "my-resource-group"
  location            = "East US"
  tags                = {
    Environment = "Production"
    Application = "Web"
  }

  custom_rules {
    name      = "BlockQueryString"
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
    enabled                     = true
    mode                        = "Prevention"
    request_body_check          = true
    file_upload_limit_in_mb     = 100
    max_request_body_size_in_kb = 2048
  }

  managed_rules {
    managed_rule_set {
      type    = "OWASP"
      version = "3.1"
    }
  }
}
