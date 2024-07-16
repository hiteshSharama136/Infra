variable "identity_name" {
  description = "The name of the User Assigned Identity"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "scope" {
  description = "The scope for the role assignment"
  type        = string
}

variable "role_definition_name" {
  description = "The role definition name for the role assignment"
  type        = string
}

variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "default_node_pool_name" {
  description = "The name of the default node pool"
  type        = string
}

variable "default_node_pool_node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
}

variable "default_node_pool_vm_size" {
  description = "The size of the VMs in the default node pool"
  type        = string
}

variable "default_node_pool_os_disk_size_gb" {
  description = "The OS disk size in GB for the default node pool"
  type        = number
}

variable "default_node_pool_max_pods" {
  description = "The maximum number of pods for the default node pool"
  type        = number
}

variable "default_node_pool_type" {
  description = "The type of the default node pool"
  type        = string
}

variable "default_node_pool_orchestrator_version" {
  description = "The orchestrator version for the default node pool"
  type        = string
}

variable "default_node_pool_enable_auto_scaling" {
  description = "Enable auto-scaling for the default node pool"
  type        = bool
  default     = false
}

variable "default_node_pool_min_count" {
  description = "The minimum number of nodes for the default node pool"
  type        = number
}

variable "default_node_pool_max_count" {
  description = "The maximum number of nodes for the default node pool"
  type        = number
}

variable "default_node_pool_node_labels" {
  description = "The labels for the nodes in the default node pool"
  type        = map(string)
  default     = {}
}

variable "network_plugin" {
  description = "The network plugin for the AKS cluster"
  type        = string
}

variable "network_policy" {
  description = "The network policy for the AKS cluster"
  type        = string
}

variable "load_balancer_sku" {
  description = "The SKU for the load balancer"
  type        = string
}

variable "outbound_type" {
  description = "The outbound type for the AKS cluster"
  type        = string
}

variable "managed_outbound_ip_count" {
  description = "The number of managed outbound IPs"
  type        = number
}

variable "effective_outbound_ips" {
  description = "The effective outbound IPs"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to add to the resources"
  type        = map(string)
  default     = {}
}
