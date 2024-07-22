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

variable "description" {
  type        = string
  default     = null
  description = "The description for the Data Factory Linked Service"
}

variable "annotations" {
  type        = list(any)
  default     = []
  description = "List of tags that can be used for describing the Data Factory Linked Service"
}

variable "parameters" {
  type        = map(any)
  default     = {}
  description = "A map of parameters to associate with the Data Factory Linked Service"
}

variable "variables" {
  type        = map(any)
  default     = {}
  description = "A map of variables to associate with the Data Factory Pipeline"
}

variable "type_properties_json" {
  type        = string
  default     = null
  description = "A JSON object that contains the properties of the Data Factory Linked Service"
}

variable "additional_properties" {
  type        = map(any)
  default     = {}
  description = "A map of additional properties to associate with the Data Factory Linked Service"
}

variable "integration_runtime_name" {
  type        = string
  default     = null
  description = "The integration runtime reference to associate with the Data Factory Linked Service"
}

variable "integration_runtime_parameters" {
  type        = map(any)
  default     = {}
  description = "A map of parameters to associate with the integration runtime"
}

variable "connection_string" {
  description = "The connection string for the Linked Service"
  type        = string
}