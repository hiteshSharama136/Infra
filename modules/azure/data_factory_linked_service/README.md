# Terraform Module: Azure Data Factory Linked Custom Service Terraform Module

This Terraform module provisions an Azure Data Factory Linked Custom Service with customizable configurations.

## Usage

module "data_factory_linked_service" {
  source                = "path_to_your_module"
  name                  = "example-linked-service"
  data_factory_id       = "example-data-factory"
  type                  = "CustomType"
  description           = "Example custom linked service"

  type_properties_json  = <<JSON
{
  "key": "value"
}
JSON

  additional_properties = {
    "property1": "value1",
    "property2": "value2"
  }

  integration_runtime_name     = "example-integration-runtime"
  integration_runtime_parameters = {
    parameter1 = "value1"
    parameter2 = "value2"
  }

  parameters = {
    "parameter1": "value1",
    "parameter2": "value2"
  }

  annotations = {
    "annotation1": "value1",
    "annotation2": "value2"
  }

}


## Inputs

| Name                           | Description                                                  | Type          | Default | Required |
|--------------------------------|--------------------------------------------------------------|---------------|---------|----------|
| name                           | The name of the Azure Data Factory Linked Service.           | string        | n/a     | yes      |
| data_factory_id                | The ID of the Azure Data Factory instance.                   | string        | n/a     | yes      |
| type                           | The type of the custom linked service.                       | string        | n/a     | yes      |
| description                    | The description of the linked service.                       | string        | n/a     | yes      |
| type_properties_json           | The JSON representation of the type-specific properties.     | string        | n/a     | yes      |
| additional_properties          | Additional properties of the linked service.                 | map(string)   | {}      | no       |
| integration_runtime_name       | The name of the integration runtime associated with the service. | string        | null    | no       |
| integration_runtime_parameters | Parameters for the integration runtime.                      | map(string)   | {}      | no       |
| parameters                     | Parameters for the linked service.                           | map(string)   | {}      | no       |
| annotations                    | Annotations for the linked service.                          | map(string)   | {}      | no       |

## Outputs

| Name | Description                                      |
|------|--------------------------------------------------|
| id   | The ID of the created Azure Data Factory Linked Service. |
