variable "arm_tenant_id" {
  type        = string
  description = "The tenant Id of azure provider"
}

variable "arm_subscription_id" {
  type        = string
  description = "The subscription Id of azure provider"
}

variable "arm_client_id" {
  type        = string
  description = "The client Id of azure provider spn"
}

variable "arm_client_secret" {
  type        = string
  sensitive   = true
  description = "The client secret of azure provider spn"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "A map of tags to add to the resources"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "The name of the SignalR service"
  type        = string
  default     = "mySignalRService"
}

variable "location" {
  description = "The location of the SignalR service"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "sku" {
  description = "The SKU of the SignalR service"
  type        = string
  default     = "Standard_S1"
}

variable "capacity" {
  description = "The capacity of the SignalR service"
  type        = number
  default     = 1
}

variable "signalr_service_name" {
  type        = string
  description = "The name of the SignalR service. Changing this forces a new resource to be created"
}

variable "signalr_service_id" {
  type = string
  description = "The ID of the SignalR service"
}