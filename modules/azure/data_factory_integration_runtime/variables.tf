variable "resource_group_name" {
  description = "The name of the resource group in which to create the self-hosted integration runtime."
  type        = string
}

variable "data_factory_name" {
  description = "The name of the Azure Data Factory instance."
  type        = string
}

variable "data_factory_id" {
  description = "The name of the Azure Data Factory instance."
  type        = string
}

variable "data_factory_integration_runtime_name" {
  description = "The name of the self-hosted integration runtime."
  type        = string
}

variable "description" {
  description = "The description of the self-hosted integration runtime."
  type        = string
}

variable "location" {
  description = "The Azure region where the self-hosted integration runtime will be created."
  type        = string
}

variable "node_size" {
  description = "The size of the nodes for the self-hosted integration runtime."
  type        = string
}

variable "node_count" {
  description = "The number of nodes for the self-hosted integration runtime."
  type        = number
}

variable "os_type" {
  description = "The operating system type of the self-hosted integration runtime nodes."
  type        = string
}

variable "linked_service_name" {
  description = "The name of the linked service associated with the self-hosted integration runtime."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the self-hosted integration runtime."
  type        = map(string)
  default     = {}
}
