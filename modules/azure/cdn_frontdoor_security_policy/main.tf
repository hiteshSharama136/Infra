resource "azurerm_cdn_frontdoor_security_policy" "security_policies" {
  for_each                 = { for policy in var.security_policies : policy.name => policy }
  name                     = each.key
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id

  security_policies {
    firewall {
      cdn_frontdoor_firewall_policy_id = azurerm_cdn_frontdoor_firewall_policy.firewall_policies[each.value.firewall_name].id

      association {
        patterns_to_match = var.patterns_to_match
        dynamic "domain" {
          for_each = toset(try(var.custom_domain_ids, []))
          content {
            cdn_frontdoor_domain_id = domain.value.id
          }
        }
        dynamic "domain" {
          for_each = toset(try(var.endpoint_ids, []))
          content {
            cdn_frontdoor_domain_id = domain.value.id
          }
        }
      }
    }
  }
}

