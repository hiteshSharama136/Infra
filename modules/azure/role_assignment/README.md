# Terraform Module: Azure Role Assignments

This module provisions Azure role assignments using the `azurerm_role_assignment` resource in Terraform.

## Usage

module "azure_role_assignments" {
  source = "./terraform-azure-role-assignments"

  role_assignment_list = var.role_assignment_list
}

## Example
role_assignment_list = {
  example1 = {
    name                 = "Assignment 1"
    scope                = "/subscriptions/subscription-id/resourceGroups/resource-group-name"
    role_definition_name = "Contributor"
    principal_id         = "principal-id-1"
  }
  example2 = {
    name                 = "Assignment 2"
    scope                = "/subscriptions/subscription-id/resourceGroups/resource-group-name"
    role_definition_id   = "/subscriptions/subscription-id/providers/Microsoft.Authorization/roleDefinitions/role-definition-id"
    principal_id         = "principal-id-2"
  }
}



## Inputs

### azure_role_assignments

| Name                 | Description                                               | Type            | Default | Required |
|----------------------|-----------------------------------------------------------|-----------------|---------|----------|
| role_assignment_list | A map of role assignments to create.                       | map(object())   | n/a     | yes      |
| - name               | The name of the role assignment.                          | string          | n/a     | yes      |
| - scope              | The scope at which the role assignment applies.           | string          | n/a     | yes      |
| - role_definition_name | The name of the role definition to assign.               | string          | null    | no       |
| - role_definition_id | The ID of the role definition to assign.                  | string          | null    | no       |
| - principal_id       | The ID of the principal to assign the role to.            | string          | n/a     | yes      |

## Outputs

### azure_role_assignments

| Name                  | Description                                               |
|-----------------------|-----------------------------------------------------------|
| role_assignment_ids   | The IDs of the Azure role assignments.                     |
| principal_types       | The type of the principal_id for each role assignment.     |
