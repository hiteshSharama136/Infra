variable "name" {
  description = "The name of the Kubernetes cluster."
  type        = string
}

variable "location" {
  description = "The location/region where the Kubernetes cluster is created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix to use with the hosted Kubernetes cluster."
  type        = string
}

variable "default_node_pool_name" {
  description = "The name of the default node pool."
  type        = string
  default     = "default"
}

variable "default_node_pool_node_count" {
  description = "The number of nodes in the default node pool."
  type        = number
  default     = 1
}

variable "default_node_pool_vm_size" {
  description = "The size of the Virtual Machine to use for the default node pool."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "default_node_pool_os_disk_size_gb" {
  description = "The size of the OS disk in GB for the default node pool."
  type        = number
  default     = 100
}

variable "default_node_pool_max_pods" {
  description = "The maximum number of pods that can run on a node in the default node pool."
  type        = number
  default     = 110
}

variable "default_node_pool_type" {
  description = "The type of the default node pool."
  type        = string
  default     = "VirtualMachineScaleSets"
}

variable "default_node_pool_orchestrator_version" {
  description = "The Kubernetes version to use for the default node pool."
  type        = string
  default     = "1.21.2"
}

variable "default_node_pool_enable_auto_scaling" {
  description = "Enable auto-scaling for the default node pool."
  type        = bool
  default     = false
}

variable "default_node_pool_min_count" {
  description = "The minimum number of nodes for auto-scaling."
  type        = number
  default     = 1
}

variable "default_node_pool_max_count" {
  description = "The maximum number of nodes for auto-scaling."
  type        = number
  default     = 3
}

variable "default_node_pool_node_labels" {
  description = "A map of node labels to assign to the default node pool."
  type        = map(string)
  default     = {}
}

variable "default_node_pool_node_taints" {
  description = "A list of node taints to apply to nodes in the default node pool."
  type        = list(string)
  default     = []
}

variable "identity_type" {
  description = "The type of identity used for the managed cluster."
  type        = string
  default     = "SystemAssigned"
}

variable "network_plugin" {
  description = "Network plugin to use for networking."
  type        = string
  default     = "azure"
}

variable "network_policy" {
  description = "Network policy to use for networking."
  type        = string
  default     = "azure"
}

variable "load_balancer_sku" {
  description = "SKU of the load balancer to use."
  type        = string
  default     = "standard"
}

variable "outbound_type" {
  description = "Outbound traffic routing method."
  type        = string
  default     = "loadBalancer"
}

variable "managed_outbound_ip_count" {
  description = "Number of managed outbound IPs."
  type        = number
  default     = 1
}

variable "effective_outbound_ips" {
  description = "A list of effective outbound IP addresses."
  type        = list(string)
  default     = []
}

variable "role_based_access_control_enabled" {
  description = "Enable RBAC for the Kubernetes cluster."
  type        = bool
  default     = true
}

variable "azure_active_directory_managed" {
  description = "Whether the Azure Active Directory integration is managed."
  type        = bool
  default     = true
}

variable "azure_active_directory_admin_group_object_ids" {
  description = "A list of Azure Active Directory Group Object IDs that will have admin access to the cluster."
  type        = list(string)
  default     = []
}

variable "ingress_application_gateway_enabled" {
  description = "Enable Application Gateway Ingress Controller."
  type        = bool
  default     = false
}

variable "ingress_application_gateway_subnet_id" {
  description = "The ID of the subnet for the Application Gateway Ingress Controller."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to assign to the resource."
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