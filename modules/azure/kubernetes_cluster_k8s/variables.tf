variable "resource_group_name" {
  type        = string
  description = "(Required) Resource group name for the aks cluster"
}

variable "tags" {
  type        = map(string)
  description = "(Required) Tags to identify the resources"
}


variable "cluster_name" {
  type        = string
  description = "(Required) Name for the AKS cluster to be deployed"
}

# variable "dns_prefix" {
#   type        = string
#   description = "(Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created."
# }

# variable "dns_prefix_private_cluster" {
#   type        = string
#   description = "(Optional) Specifies the DNS prefix to use with private clusters. Changing this forces a new resource to be created."
# }


# variable "private_dns_zone_id" {
#   type        = string
#   description = "(Optional) Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None. In case of None you will need to bring your own DNS server and set up resolving, otherwise, the cluster will have issues after provisioning. Changing this forces a new resource to be created."
# }

variable "oidc_issuer_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Enable or Disable the OIDC issuer URL"
}



variable "local_account_disabled" {
  type        = bool
  default     = false
  description = "(Optional) If true local accounts will be disabled."
}


variable "workload_identity_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to false."
}

variable "kubernetes_version" {
  type        = string
  description = "(Optional) Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case."
}

# variable "azure_rbac_enabled" {
#   type        = string
#   description = "(Optional) Is Role Based Access Control based on Azure AD enabled?"
# }



variable "identity_type" {
  type        = string
  description = "(Required) Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are SystemAssigned or UserAssigned."
}

variable "identity_ids" {
  type        = list(string)
  default     =  []
  description = "(Optional) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kubernetes Cluster."
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

variable "admin_username" {
  type        = string
  description = "(Required) The Admin Username for the Cluster"
}

variable "public_ssh_key" {
  type        = string
  description = " (Required) The Public SSH Key used to access the cluster."
}

variable "win_admin_password" {
  type        = string
  description = "(Optional) The Admin Password for Windows VMs"
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


variable "max_pods" {
  type        = number
  description = "(Optional) The maximum number of pods that can run on each agent. Changing this forces a new resource to be created. temporary_name_for_rotation must be specified when changing this property."
}

variable "os_disk_size_gb" {
  type        = number
  description = "(Optional) The size of the OS Disk which should be used for each agent in the Node Pool. temporary_name_for_rotation must be specified when attempting a change."
}

variable "os_disk_type" {
  type        = string
  default     = "Managed"
  description = "(Optional) The size of the OS Disk which should be used for each agent in the Node Pool. temporary_name_for_rotation must be specified when attempting a change."
}

variable "os_sku" {
  type        = string
  default     = "Linux"
  description = " (Optional) Specifies the OS SKU used by the agent pool. Possible values include: AzureLinux, Ubuntu, Windows2019, Windows2022. If not specified, the default is Ubuntu if OSType=Linux or Windows2019 if OSType=Windows. And the default Windows OSSKU will be changed to Windows2022 after Windows2019 is deprecated. temporary_name_for_rotation must be specified when attempting a change."
}

variable "location" {
  type        = string
  description = "(Optional) Location to deploy the resources"
  default     = "Canada Central"
}

variable "enable_auto_scaling" {
  type        = bool
  default     = true
  description = "(Optional) Enable autoscaling for the cluster"
}

variable "network_plugin" {
  type        = string
  default     = "azure"
  description = "(Optional) Network plugin for the cluster"
}

variable "network_policy" {
  type        = string
  default     = "calico"
  description = "(Optional) Network policy for the cluster"
}

variable "load_balancer_sku" {
  type        = string
  default     = "standard"
  description = "(Optional) Load balancer sku type for the cluster"
}

variable "azuread_group_name" {
  type        = string
  default     = "Mg-DevOps-Team-UAT"
  description = "(Optional) Azure AD group name for the Devops Group"
}

variable "azuread_managed" {
  type        = bool
  default     = true
  description = "(Optional) Enable Azure AD for the cluster"
}

variable "azuread_rbac_enabled" {
  type        = bool
  default     = false
  description = "(Optional) Enable RBAC for the cluster"
}

variable "log_analytics_workspace_id" {
  type        = string
}

variable "private_cluster_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Deploy private cluster"
}

variable "azure_policy_enabled" {
  type        = bool
  default     = false
}

variable "http_application_routing_enabled" {
  type        = bool
  default     = false
}

variable "vnet_subnet_id" {
  type        = string
  description = "(Required) Subnet Id to deploy the cluster"
}


variable "azure_ad_group_id" {
  type        = string
  description = "(Required) AD group id for AD authentication"
}

variable "auto_scaler_profile_scan_interval" {
  type    = string
  default = "600s"
}

variable "auto_scaler_profile_scale_down_delay_after_add" {
  type    = string
  default = "10m"
}

variable "auto_scaler_profile_scale_down_delay_after_delete" {
  type    = string
  default = "20s"
}

variable "auto_scaler_profile_scale_down_delay_after_failure" {
  type    = string
  default = "3m"
}

variable "auto_scaler_profile_scale_down_unneeded_time" {
  type    = string
  default = "10m"
}

variable "auto_scaler_profile_scale_down_unready_time" {
  type    = string
  default = "20m"
}

variable "auto_scaler_profile_utilization_threshold" {
  type    = number
  default = 0.5
}

variable "auto_scaler_profile_max_graceful_termination_sec" {
  type    = number
  default = 600
}