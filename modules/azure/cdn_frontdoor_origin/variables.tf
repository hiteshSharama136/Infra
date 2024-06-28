variable "name" {
  type        = string
  description = "The name which should be used for this Front Door Origin"
}

variable "cdn_frontdoor_origin_group_id" {
  type        = string
  description = "The ID of the Front Door Origin Group within which this Front Door Origin should exist"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Should the origin be enabled? Possible values are true or false. Defaults to true"
}

variable "host_name" {
  type        = string
  description = "The IPv4 address, IPv6 address or Domain name of the Origin"
}

variable "http_port" {
  type        = number
  default     = 80
  description = "The value of the HTTP port. Must be between 1 and 65535. Defaults to 80"
}

variable "https_port" {
  type        = number
  default     = 443
  description = "The value of the HTTPS port. Must be between 1 and 65535. Defaults to 443"
}

variable "origin_host_header" {
  type        = string
  default     = null
  description = "The host header value (an IPv4 address, IPv6 address or Domain name) which is sent to the origin with each request. If unspecified the hostname from the request will be used"
}

variable "priority" {
  type        = number
  default     = 1
  description = "Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between 1 and 5 (inclusive). Defaults to 1"
}

variable "weight" {
  type        = number
  default     = 500
  description = "The weight of the origin in a given origin group for load balancing. Must be between 1 and 1000. Defaults to 500"
}

variable "certificate_name_check_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether certificate name checks are enabled for this origin"
}

variable "private_link_request_message" {
  type        = string
  default     = "Request access for Private Link Enable"
}

variable "private_link_location" {
  type        = string
}

variable "private_link_id" {
  type        = string
}