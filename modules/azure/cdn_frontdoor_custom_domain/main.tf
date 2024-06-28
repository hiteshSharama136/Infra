resource "azurerm_cdn_frontdoor_custom_domain" "custom_domain" {
  for_each                = var.custom_domain_name

  name                    = each.key
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  host_name               = var.frontdoor_host_name

  dynamic "tls" {
    for_each = var.tls_settings

    content {
      minimum_tls_version = tls.value.minimum_tls_version
      # certificate_name    = tls.value.certificate_name
      certificate_type    = "Dedicated"
      # key_vault_secret_id = tls.value.key_vault_secret_id
    }
  }
}
