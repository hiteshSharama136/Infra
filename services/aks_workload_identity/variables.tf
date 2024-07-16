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

variable "identity_name" {
  description = "The name of the User Assigned Identity"
  type        = string
  default     = "myAksIdentity"
}

variable "scope" {
  description = "The scope for the role assignment"
  type        = string
}

variable "role_definition_name" {
  description = "The role definition name for the role assignment"
  type        = string
  default     = "Contributor"
}

variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "myAksCluster"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "myAks"
}

variable "default_node_pool_name" {
  description = "The name of the default node pool"
  type        = string
  default     = "default"
}

variable "default_node_pool_node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 3
}

variable "default_node_pool_vm_size" {
  description = "The size of the VMs in the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "default_node_pool_os_disk_size_gb" {
  description = "The OS disk size in GB for the default node pool"
  type        = number
  default     = 100
}

variable "default_node_pool_max_pods" {
  description = "The maximum number of pods for the default node pool"
  type        = number
  default     = 110
}

variable "default_node_pool_type" {
  description = "The type of the default node pool"
  type        = string
  default     = "VirtualMachineScaleSets"
}

variable "default_node_pool_orchestrator_version" {
  description = "The orchestrator version for the default node pool"
  type        = string
  default     = "1.18.14"
}

variable "default_node_pool_enable_auto_scaling" {
  description = "Enable auto-scaling for the default node pool"
  type        = bool
  default     = true
}

variable "default_node_pool_min_count" {
  description = "The minimum number of nodes for the default node pool"
  type        = number
  default     = 1
}

variable "default_node_pool_max_count" {
  description = "The maximum number of nodes for the default node pool"
  type        = number
  default     = 5
}

variable "default_node_pool_node_labels" {
  description = "The labels for the nodes in the default node pool"
  type        = map(string)
  default     = {}
}

variable "network_plugin" {
  description = "The network plugin for the AKS cluster"
  type        = string
  default     = "azure"
}

variable "network_policy" {
  description = "The network policy for the AKS cluster"
  type        = string
  default     = "azure"
}

variable "load_balancer_sku" {
  description = "The SKU for the load balancer"
  type        = string
  default     = "standard"
}

variable "outbound_type" {
  description = "The outbound type for the AKS cluster"
  type        = string
  default     = "loadBalancer"
}

variable "managed_outbound_ip_count" {
  description = "The number of managed outbound IPs"
  type        = number
  default     = 1
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
