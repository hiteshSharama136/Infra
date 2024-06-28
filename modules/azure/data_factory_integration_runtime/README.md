# Terraform Module: Azure Data Factory Self-Hosted Integration Runtime

This Terraform module provisions a self-hosted integration runtime in Azure Data Factory.

## Usage

```hcl
module "data_factory_self_hosted_runtime" {
  source              = "./terraform-module-data-factory-integration-runtime-self-hosted"
  resource_group_name = "example-resource-group"
  data_factory_name   = "example-data-factory"
  name                = "example-self-hosted-runtime"
  description         = "Example self-hosted integration runtime"
  location            = "East US"
  node_size           = "Standard_D1_v2"
  node_count          = 2
  os_type             = "Windows"
  linked_service_name = "example-linked-service"
  tags = {
    environment = "production"
    team        = "data-engineering"
  }
}

## Inputs

| Name                    | Description                                                        | Type          | Default | Required |
|-------------------------|--------------------------------------------------------------------|---------------|---------|----------|
| resource_group_name     | The name of the resource group in which to create the integration runtime. | string        | n/a     | yes      |
| data_factory_name       | The name of the Azure Data Factory instance.                        | string        | n/a     | yes      |
| name                    | The name of the integration runtime.                                | string        | n/a     | yes      |
| description             | The description of the integration runtime.                         | string        | n/a     | yes      |
| location                | The Azure region where the integration runtime will be created.    | string        | n/a     | yes      |
| node_size               | The size of the nodes for the integration runtime.                  | string        | n/a     | yes      |
| node_count              | The number of nodes for the integration runtime.                    | number        | n/a     | yes      |
| os_type                 | The operating system type of the nodes.                             | string        | n/a     | yes      |
| linked_service_name     | The name of the linked service associated with the integration runtime. | string        | n/a     | yes      |
| tags                    | A mapping of tags to assign to the integration runtime.             | map(string)   | {}      | no       |

## Outputs

| Name                                        | Description                                                          |
|---------------------------------------------|----------------------------------------------------------------------|
| self_hosted_integration_runtime_id           | The ID of the created self-hosted integration runtime.                |
| self_hosted_integration_runtime_name         | The name of the created self-hosted integration runtime.              |
| self_hosted_integration_runtime_node_count   | The node count of the created self-hosted integration runtime.        |
| self_hosted_integration_runtime_location     | The location of the created self-hosted integration runtime.          |
