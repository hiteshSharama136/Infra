
variable "frontdoor_endpoint_name" {
  type        = string
  description = "The name which should be used for this Front Door Endpoint"
}

variable "cdn_frontdoor_profile_id" {
  type        = string
  description = "The ID of the Front Door Profile within which this Front Door Endpoint should exist"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Specifies if this Front Door Endpoint is enabled? Defaults to true"
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Specifies a mapping of tags which should be assigned to the Front Door Endpoint"
}