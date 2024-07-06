resource "azurerm_cdn_frontdoor_firewall_policy" "firewall_policies" {
  for_each                          = { for policy in var.firewall_policies : policy.name => policy }
  name                              = each.key
  resource_group_name               = var.resource_group_name
  sku_name                          = var.front_door_sku_name
  enabled                           = try(each.value.enabled, true)
  mode                              = each.value.mode
  # redirect_url                      = each.value.redirect_url
  # custom_block_response_status_code = each.value.custom_block_response_status_code
  # custom_block_response_body        = base64encode(each.value.custom_block_response_body)

  dynamic "custom_rule" {
    for_each = { for rule in try(each.value.custom_rules, []) : rule.name => rule }
    content {
      name                           = custom_rule.key
      enabled                        = try(custom_rule.value.enabled, true)
      priority                       = try(custom_rule.value.priority, 1)
      rate_limit_duration_in_minutes = try(custom_rule.value.rate_limit_duration_in_minutes, 1)
      rate_limit_threshold           = try(custom_rule.value.rate_limit_threshold, 10)
      type                           = custom_rule.value.type
      action                         = custom_rule.value.action

      dynamic "match_condition" {
        for_each = { for condition in custom_rule.value.match_conditions : format("%s-%s-%s", try(condition.match_variable, ""), try(condition.operator, ""), try(condition.negation_condition, "")) => condition }
        content {
          match_variable     = match_condition.value.match_variable
          operator           = match_condition.value.operator
          negation_condition = try(match_condition.value.negation_condition, null)
          match_values       = match_condition.value.match_values
          selector           = try(match_condition.value.selector, null)
          transforms         = try(match_condition.value.transforms, null)
        }
      }
    }
  }
}
