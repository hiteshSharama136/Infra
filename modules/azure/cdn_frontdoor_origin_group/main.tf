resource "azurerm_cdn_frontdoor_origin_group" "origin_group" {
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  session_affinity_enabled = var.session_affinity_enabled

  load_balancing {
    sample_size                        = var.lb_sample_size
    successful_samples_required        = var.lb_successful_samples_required
    additional_latency_in_milliseconds = var.lb_additional_latency_in_milliseconds
  }

  dynamic "health_probe" {
    for_each = var.health_probe_protocol == null ? [0] : [1]
    content {
      path                = var.health_probe_path
      request_type        = var.health_probe_request_type
      protocol            = var.health_probe_protocol
      interval_in_seconds = var.health_probe_interval
    }
  }
}