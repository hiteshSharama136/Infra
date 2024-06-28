variable "solution_name" {
  type        = string
  description = "(Required) Specifies the name of the solution to be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "tags" {
  type = map(string)
}

variable "workspace_resource_id" {
  type        = string
  description = "(Required) The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created."
}

variable "workspace_name" {
  type        = string
  description = "(Required) The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created."
}

variable "publisher" {
  type        = string
  description = "(Required) The publisher of the solution. For example Microsoft"
}

variable "product" {
  type        = string
  description = "(Required) The product name of the solution. For example OMSGallery/Containers."
}