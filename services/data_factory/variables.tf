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
  description = "The name of the Data Factory"
  type        = string
  default     = "myDataFactory"
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "integration_runtime_name" {
  description = "The name of the Integration Runtime"
  type        = string
  default     = "myIntegrationRuntime"
}

variable "compute_type" {
  description = "The compute type of the Integration Runtime"
  type        = string
  default     = "General"
}

variable "core_count" {
  description = "The core count of the Integration Runtime"
  type        = number
  default     = 8
}

variable "time_to_live" {
  description = "The time to live of the Integration Runtime"
  type        = number
  default     = 0
}

variable "linked_service_name" {
  description = "The name of the Linked Service"
  type        = string
  default     = "myLinkedService"
}

variable "connection_string" {
  description = "The connection string for the Linked Service"
  type        = string
  default     = "Server=tcp:myserver.database.windows.net;Database=mydatabase;User ID=myuser;Password=mypassword;Encrypt=true;Connection Timeout=30;"
}

variable "pipeline_name" {
  description = "The name of the Pipeline"
  type        = string
  default     = "myPipeline"
}

variable "trigger_schedule_name" {
  description = "The name of the Trigger Schedule"
  type        = string
  default     = "myTriggerSchedule"
}

variable "frequency" {
  description = "The frequency of the Trigger Schedule"
  type        = string
  default     = "Day"
}

variable "interval" {
  description = "The interval of the Trigger Schedule"
  type        = number
  default     = 1
}

variable "trigger_name" {
  description = "The name of the Trigger"
  type        = string
  default     = "myTrigger"
}

variable "blob_path_begins_with" {
  description = "The blob path begins with for the Trigger"
  type        = string
  default     = "/path/to/blob"
}

variable "blob_path_ends_with" {
  description = "The blob path ends with for the Trigger"
  type        = string
  default     = ".csv"
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

variable "data_factory_name" {
  description = "The name of the Data Factory."
  type        = string
}

variable "data_factory_id" {
  type        = string
  description = "The Data Factory ID in which to associate the Linked Service with"
}

variable "data_factory_linked_service_name" {
  type        = string
  description = "Specifies the name of the Data Factory Linked Service"
}

variable "type" {
  type        = string
  description = "The type of data stores that will be connected to Data Factory"
}

variable "data_factory_id" {
  type        = string
  description = "The Data Factory ID in which to associate the Linked Service with"
}

variable "data_factory_pipeline_name" {
  type        = string
  description = "The description for the Data Factory Pipeline"
}

variable "data_factory_trigger_name" {
  description = "The name of the Data Factory Trigger."
  type        = string
}


variable "schedule_name" {
  description = "The name of the Data Factory Trigger Schedule."
  type        = string
}

variable "start_time" {
  description = "The start time for the trigger schedule."
  type        = string
}

variable "start_window" {
  description = "The start window for the trigger."
  type        = string
}

variable "end_window" {
  description = "The end window for the trigger."
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