variable "custom_domain_name" {
  description = "The custom domain names to be associated with the Azure Front Door instance."
  type        = map(string)
}

variable "cdn_frontdoor_profile_id" {
  description = "The ID of the Azure CDN Front Door profile."
  type        = string
}

variable "frontdoor_host_name" {
  description = "The host name of the Azure Front Door instance."
  type        = string
}

variable "tls_settings" {
  description = "TLS settings for custom domains."
  type        = map(object({
    minimum_tls_version = string
    certificate_name    = string
    key_vault_secret_id = string
  }))
}
