variable "name" {
  description = "The name of the Data Factory Trigger."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Data Factory Trigger."
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

variable "schedule_name" {
  description = "The name of the Data Factory Trigger Schedule."
  type        = string
}

variable "frequency" {
  description = "The frequency of recurrence for the trigger schedule."
  type        = string
}

variable "interval" {
  description = "The interval of recurrence for the trigger schedule."
  type        = number
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
