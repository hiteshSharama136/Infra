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

variable "arm_uat_subscription_id" {
  default     = ""
  type        = string
  description = "The subscription Id of azure provider"
}


variable "environment" {
  type        = string
  description = "The environment to deploy in"
  validation {
    condition     = var.environment == "Dev" || var.environment == "QA" || var.environment == "Prod" || var.environment == "DevPOC" || var.environment == "Uat"
    error_message = "The value for environment can only be \"Dev\" or \"DevPOC\" or \"QA\" or \"Prod\"!"
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

variable "network_policy" {
  type        = string
  default     = "none"
  description = "(Optional) Network policy for the cluster"
}

variable "auto_upgrade" {
  type        = string
  default     = "none"
  description = "(Optional) Network policy for the cluster"
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

variable "os_disk_size_gb" {
  type        = number
  default     = 256
  description = "(Optional) The size of the OS Disk which should be used for each agent in the Node Pool. temporary_name_for_rotation must be specified when attempting a change."
}

variable "dns_prefix" {
  type        = string
  description = "(Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created."
}

variable "global_resource_group_name" {
  type        = string
  description = "(Required) The ID of the Log Analytics Workspace which the OMS Agent should send data to."
}

variable "container_registry_rg_name" {
  type        = string
  description = "(Required) The ID of the Log Analytics Workspace which the OMS Agent should send data to."
}

variable "storage_account_rg_name" {
  type        = string
  description = "(Required) The ID of the Log Analytics Workspace which the OMS Agent should send data to."
}

variable "workspace_name" {
  type        = string
  description = "(Required) Workspace name."
}

variable "azure_ad_group_id" {
  type        = string
  description = "(Required) AD group id for AD authentication"
}

variable "identity_type" {
  type        = string
  default     = "SystemAssigned"
  description = "(Required) Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are SystemAssigned or UserAssigned."
}

variable "kubernetes_version" {
  type        = string
  default     = "1.27"
  description = "(Optional) Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case."
}

variable "container_registry_name" {
  type        = string
}


variable "configuration_store_name" {
  type        = string
}

variable "key_vault_name" {
  type        = string
}

variable "storage_account_name" {
  type        = string
}

variable "cluster_name" {
  type = string
}

variable "msi_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable  "win_admin_password" {
  type = string
}

variable "public_ssh_key" {
  type = string
}