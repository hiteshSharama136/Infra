# Azure Databricks Virtual Network Peering Terraform Module

This module creates a virtual network peering between Azure Databricks workspace and a specified virtual network.

## Usage

### Basic Usage

```hcl
module "databricks_vnet_peering" {
  source                   = "path_to_your_module"
  azdvnet_name             = "databricks-vnet-peering"
  resource_group_name      = "my-resource-group"
  azurerm_databricks_workspace_id = "workspace-id"
  azurerm_virtual_network_id = "virtual-network-id"
  azurerm_virtual_network_address_space = ["10.0.0.0/16"]
  allow_virtual_network_access = true
}



## Inputs
| Name                              | Description                                                                 | Required |
|-----------------------------------|-----------------------------------------------------------------------------|----------|
| `azdvnet_name`                    | Name of the Azure Databricks virtual network peering.                        | yes      |
| `resource_group_name`             | Name of the resource group for the virtual network peering.                  | yes      |
| `azurerm_databricks_workspace_id` | ID of the Azure Databricks workspace.                                        | yes      |
| `azurerm_virtual_network_id`      | ID of the Azure virtual network to peer with the Databricks workspace.       | yes      |
| `azurerm_virtual_network_address_space` | Address space prefixes of the remote virtual network.                    | yes      |
| `allow_virtual_network_access`    | Allow virtual network access from Azure Databricks workspace.                | no       |


## Outputs

| Name                   | Description                                            |
|------------------------|--------------------------------------------------------|
| `databricks-vnet-peer_id` | The ID of the Azure Databricks virtual network peering. |
