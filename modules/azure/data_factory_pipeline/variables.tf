variable "data_factory_id" {
  type        = string
  description = "The Data Factory ID in which to associate the Linked Service with"
}

variable "data_factory_pipeline_name" {
  type        = string
  description = "The description for the Data Factory Pipeline"
}

variable "description" {
  type        = string
  default     = null
  description = "The description for the Data Factory Pipeline"
}

variable "annotations" {
  type        = list(any)
  default     = []
  description = "List of tags that can be used for describing the Data Factory Pipeline"
}

variable "concurrency" {
  type        = number
  default     = 1
  description = "The max number of concurrent runs for the Data Factory Pipeline. Must be between 1 and 50"

  validation {
    condition     = var.concurrency >= 1 && var.concurrency <= 50
    error_message = "The value for concurrency must be between 1 and 50!"
  }
}

variable "folder" {
  type        = string
  default     = null
  description = "The folder that this Pipeline is in"
}

variable "moniter_metrics_after_duration" {
  type        = string
  default     = null
  description = "The TimeSpan value after which an Azure Monitoring Metric is fired"
}

variable "parameters" {
  type        = map(any)
  default     = {}
  description = "A map of parameters to associate with the Data Factory Pipeline"
}

variable "variables" {
  type        = map(any)
  default     = {}
  description = "A map of variables to associate with the Data Factory Pipeline"
}

variable "activities_json" {
  type        = string
  default     = null
  description = "A JSON object that contains the activities that will be associated with the Data Factory Pipeline"
}