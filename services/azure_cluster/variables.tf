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

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "myAKSCluster"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "aks"
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
  description = "The VM size for the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "default_node_pool_os_disk_size_gb" {
  description = "The OS disk size in GB for the default node pool"
  type        = number
  default     = 30
}

variable "default_node_pool_max_pods" {
  description = "The maximum number of pods that can run on a node in the default node pool"
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
}

variable "default_node_pool_enable_auto_scaling" {
  description = "Whether to enable auto-scaling for the default node pool"
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
  description = "The labels for nodes in the default node pool"
  type        = map(string)
  default     = {}
}

# variable "default_node_pool_node_taints" {
#   description = "The taints for nodes in the default node pool"
#   type        = list(string)
#   default     = []
# }

variable "identity_type" {
  description = "The type of identity used for the AKS cluster"
  type        = string
  default     = "SystemAssigned"
}

variable "network_plugin" {
  description = "The network plugin used for the AKS cluster"
  type        = string
  default     = "azure"
}

variable "network_policy" {
  description = "The network policy used for the AKS cluster"
  type        = string
}

variable "load_balancer_sku" {
  description = "The SKU of the load balancer used for the AKS cluster"
  type        = string
  default     = "standard"
}

variable "outbound_type" {
  description = "The outbound type used for the AKS cluster"
  type        = string
  default     = "loadBalancer"
}

variable "managed_outbound_ip_count" {
  description = "The number of managed outbound IPs for the load balancer"
  type        = number
  default     = 1
}

variable "effective_outbound_ips" {
  description = "The effective outbound IPs for the load balancer"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "The tags to apply to the AKS cluster"
  type        = map(string)
  default     = {}
}

variable "kubernetes_version" {
  type        = string
  description = "(Optional) Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case."
}

variable "vnet_subnet_id" {
  type        = string
  description = "(Required) Subnet Id to deploy the cluster"
}

variable "name" {
  type        = string
  description = "(Required) Provide resource group name"
}
