# Azure Container Registry Terraform Module

This module creates an Azure Container Registry with customizable inputs.

## Usage

### Basic Usage

```hcl
module "container_registry" {
  source                   = "path_to_your_module"
  name                     = "my-container-registry"
  resource_group_name      = "my-resource-group"
  location                 = "East US"
  sku                      = "Standard"

  admin_enabled            = false
  public_network_access_enabled = true
  quarantine_policy_enabled = true

  tags = {
    environment = "production"
  }
}


## Inputs
| Name                           | Description                                                        | Default | Required |
|--------------------------------|--------------------------------------------------------------------|---------|----------|
| `name`                         | The name of the Azure Container Registry.                           | n/a     | yes      |
| `resource_group_name`          | The name of the resource group in which to create the Container Registry. | n/a     | yes      |
| `location`                     | The location where the Container Registry should be created.       | n/a     | yes      |
| `sku`                          | The SKU (pricing tier) of the Container Registry.                   | n/a     | yes      |
| `admin_enabled`                | Whether admin user is enabled for the Container Registry.           | false   | no       |
| `public_network_access_enabled`| Whether public network access is enabled for the Container Registry. | true    | no       |
| `quarantine_policy_enabled`    | Whether quarantine policy is enabled for the Container Registry.   | true    | no       |
| `tags`                         | A mapping of tags to assign to the resource.                        | {}      | no       |

## Outputs

| Name                           | Description                                          |
|--------------------------------|------------------------------------------------------|
| `container_registry_id`        | The ID of the Azure Container Registry created.       |
| `container_registry_name`      | The name of the Azure Container Registry created.     |
| `container_registry_login_server` | The login server URL of the Azure Container Registry. |
