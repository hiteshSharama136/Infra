# Azure Cognitive Services Account Terraform Module

This module provisions an Azure Cognitive Services Account with customizable inputs.

## Usage

### Basic Usage

```hcl
module "cognitive_services" {
  source                   = "path_to_your_module"
  name                     = "my-cognitive-account"
  location                 = "East US"
  resource_group_name      = "my-resource-group"
  kind                     = "TextAnalytics"

  custom_subdomain_name    = "mycustomdomain"
  outbound_network_access_restricted = false
  public_network_access_enabled      = true

  sku_name                 = "S0"

  tags = {
    environment = "production"
  }
}


## Inputs
| Name                              | Description                                                                      | Required |
|-----------------------------------|----------------------------------------------------------------------------------|----------|
| `name`                            | The name of the Azure Cognitive Services Account.                                 | yes      |
| `location`                        | The location where the Azure Cognitive Services Account should be created.        | yes      |
| `resource_group_name`             | The name of the resource group in which to create the Cognitive Services Account. | yes      |
| `kind`                            | The kind (type) of the Cognitive Services Account.                                 | yes      |
| `custom_subdomain_name`           | The custom subdomain name for the Cognitive Services Account.                      | no       |
| `outbound_network_access_restricted` | Whether or not to restrict outbound network access.                               | no       |
| `public_network_access_enabled`   | Whether or not to enable public network access.                                    | no       |
| `sku_name`                        | The SKU (pricing tier) of the Cognitive Services Account.                          | yes      |
| `tags`                            | A mapping of tags to assign to the resource.                                       | no       |

## Outputs

| Name                              | Description                                                      |
|-----------------------------------|------------------------------------------------------------------|
| `cognitive_account_id`            | The ID of the Azure Cognitive Services Account created.           |
| `cognitive_account_name`          | The name of the Azure Cognitive Services Account created.         |
| `cognitive_account_endpoint`      | The endpoint URL of the Azure Cognitive Services Account.         |
