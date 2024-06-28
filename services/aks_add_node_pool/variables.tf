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

variable "environment" {
  type        = string
  description = "The environment to deploy in"
  validation {
    condition     = var.environment == "Dev" || var.environment == "QA" || var.environment == "Prod" || var.environment == "DevPOC" || var.environment == "Uat"
    error_message = "The value for environment can only be \"Dev\" or \"DevPOC\" or \"QA\" or \"Prod\"!"
  }
}

variable "node_pool_mode" {
  type        = string
  description = "Specifiy mode for node pool"
  default     = "User"
  validation {
    condition     = var.node_pool_mode == "User" || var.node_pool_mode == "System" 
    error_message = "The value for mode can only be \"User\" or \"System\""
  }
}

variable "resource_name" {
  type = string
}

variable "instance_number" {
  type    = string
  default = "01"
}

variable "vnet_rg" {
  type        = string
  description = "The name of the resource group where the VNET is"
}

variable "vnet_name" {
  type        = string
  description = "The name of the VNET"
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the work Vault. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "tags" {
  type = map(string)
}

variable "node_pool_vm_size" {
  type        = string
  default     = "Standard_D8s_v5"
  description = "(Optional) Instance size for the node pool"
}

variable "node_pool_name" {
  type        = string
  default     = "agentpool"
  description = "(Optional) Default node pool name for the cluster"
}

variable "node_pool_node_count" {
  type        = number
  description = "(Optional) The initial count of nodes for the node pool"
  default     = 1
}

variable "node_pool_min_node_count" {
  type        = number
  description = "(Optional) The min count of nodes for the nodepool"
  default     = 1
}

variable "node_pool_max_node_count" {
  type        = number
  description = "(Optional) The max count of nodes for the nodepool"
  default     = 12
}


variable "max_pods_per_node" {
  type        = number
  description = "(Optional) The maximum number of pods that can run on each agent. Changing this forces a new resource to be created. temporary_name_for_rotation must be specified when changing this property."
}

variable "aks_resource_group_name" {
  type = string
}

variable "aks_name" {
  type = string
}

variable "CIDR_range" {
  type = list(any)
}

variable "zones" {
  type = list(any)
}

variable "orchestrator_version" {
  type        = string
  default     = "1.26.6"
  description = "Kubernetes version for the orchestrator"
}