# Azure Log Analytics Solution Terraform Module

This Terraform module manages an Azure Log Analytics Solution.


### Basic Usage
module "log_analytics_solution" {
  source = "path_to_your_module"
  
  solution_name         = "example-solution"
  location              = "East US"
  resource_group_name   = "example-resource-group"
  workspace_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-workspace"
  workspace_name        = "example-workspace"

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ExampleSolution"
  }

  tags = {
    environment = "production"
    cost_center = "IT"
  }
}


## Inputs

| Name                   | Description                                                        | Type    | Default | Required |
|------------------------|--------------------------------------------------------------------|---------|---------|----------|
| solution_name          | The name of the Log Analytics Solution.                            | string  | n/a     | yes      |
| location               | The location/region where the solution will be deployed.           | string  | n/a     | yes      |
| resource_group_name    | The name of the resource group in which the solution will reside.  | string  | n/a     | yes      |
| workspace_resource_id  | The resource ID of the Log Analytics workspace.                    | string  | n/a     | yes      |
| workspace_name         | The name of the Log Analytics workspace.                           | string  | n/a     | yes      |
| plan                   | Configuration block for the plan details of the solution.          | object  | n/a     | yes      |
| tags                   | Tags to apply to the Log Analytics Solution resources.             | map     | {}      | no       |

### Plan Block

| Name       | Description                                        | Type    | Default | Required |
|------------|----------------------------------------------------|---------|---------|----------|
| publisher  | The publisher of the Log Analytics Solution.       | string  | n/a     | yes      |
| product    | The product name of the Log Analytics Solution.    | string  | n/a     | yes      |

## Outputs

| Name              | Description                                                  |
|-------------------|--------------------------------------------------------------|
| id                | The ID of the Log Analytics Solution.                         |
| solution_name     | The name of the Log Analytics Solution.                       |
| location          | The location/region of the Log Analytics Solution.            |
| resource_group    | The name of the resource group of the Log Analytics Solution. |
| workspace_name    | The name of the Log Analytics workspace.                     |
| publisher         | The publisher of the Log Analytics Solution.                 |
| product           | The product name of the Log Analytics Solution.              |
