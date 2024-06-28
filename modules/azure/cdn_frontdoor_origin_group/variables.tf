variable "name" {
  type        = string
  description = "The name which should be used for this Front Door Origin Group"
}

variable "cdn_frontdoor_profile_id" {
  type        = string
  description = "The ID of the Front Door Profile within which this Front Door Origin Group should exist"
}

variable "session_affinity_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether session affinity should be enabled on this host. Defaults to true"
}

###########################
# Load balancer variables #
###########################

variable "lb_sample_size" {
  type        = number
  default     = 4
  description = "Specifies the number of samples to consider for load balancing decisions. Possible values are between 0 and 255 (inclusive). Defaults to 4"
}

variable "lb_successful_samples_required" {
  type        = number
  default     = 3
  description = "Specifies the number of samples within the sample period that must succeed. Possible values are between 0 and 255 (inclusive). Defaults to 3"
}

variable "lb_additional_latency_in_milliseconds" {
  type        = number
  default     = 50
  description = "Specifies the additional latency in milliseconds for probes to fall into the lowest latency bucket. Possible values are between 0 and 1000 milliseconds (inclusive). Defaults to 50"
}

##########################
# Health probe variables #
##########################

variable "health_probe_protocol" {
  type        = string
  default     = "Https"
  description = "Specifies the protocol to use for health probe. Possible values are Http and Https"
}

variable "health_probe_interval" {
  type        = number
  default     = 5
  description = "Specifies the number of seconds between health probes. Possible values are between 5 and 31536000 seconds (inclusive)"
}

variable "health_probe_request_type" {
  type        = string
  default     = "HEAD"
  description = "Specifies the type of health probe request that is made. Possible values are GET and HEAD. Defaults to HEAD"
}

variable "health_probe_path" {
  type        = string
  default     = "/"
  description = "Specifies the path relative to the origin that is used to determine the health of the origin. Defaults to /"
}