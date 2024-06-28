# Azure Kubernetes Service (AKS) Terraform Module

This Terraform module provisions an Azure Kubernetes Service (AKS) cluster with customizable configurations.

## Usage

### Basic Usage

```hcl
module "aks_cluster" {
  source              = "path_to_your_module"
  name                = "my-aks-cluster"
  location            = "eastus"
  resource_group_name = "my-resource-group"
  dns_prefix          = "myakscluster"

  default_node_pool {
    name                = "default"
    node_count          = 3
    vm_size             = "Standard_D2_v2"
    os_disk_size_gb     = 30
    max_pods            = 110
    type                = "VirtualMachineScaleSets"
    orchestrator_version = "1.21.4"
    enable_auto_scaling = true
    min_count           = 1
    max_count           = 5
    node_labels = {
      "environment" = "production"
    }
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin     = "azure"
    network_policy     = "calico"
    load_balancer_sku  = "Standard"
    outbound_type      = "loadBalancer"
    load_balancer_profile {
      managed_outbound_ip_count      = 1
      effective_outbound_ips         = []
    }
  }

  tags = {
    environment = "production"
    project     = "my-project"
  }
}



## Inputs
| Name                     | Description                                                             | Default | Required |
|--------------------------|-------------------------------------------------------------------------|---------|----------|
| `name`                   | Name of the AKS cluster.                                                | n/a     | yes      |
| `location`               | Azure region where the AKS cluster will be created.                     | n/a     | yes      |
| `resource_group_name`    | Resource group name for the AKS cluster.                                | n/a     | yes      |
| `dns_prefix`             | DNS prefix specified for the AKS cluster.                               | n/a     | yes      |
| `default_node_pool`      | Configuration block for default node pool.                              | n/a     | yes      |
| `identity_type`          | Type of identity for the AKS cluster.                                   | n/a     | no       |
| `network_plugin`         | Network plugin to use for the AKS cluster.                              | n/a     | yes      |
| `network_policy`         | Network policy to use for the AKS cluster.                              | n/a     | yes      |
| `load_balancer_sku`      | SKU (pricing tier) of the load balancer used for the AKS cluster.       | n/a     | yes      |
| `outbound_type`          | Outbound traffic configuration for the AKS cluster.                     | n/a     | yes      |
| `managed_outbound_ip_count` | Number of managed outbound IPs for the AKS cluster load balancer.      | n/a     | no       |
| `effective_outbound_ips` | List of effective outbound IPs for the AKS cluster load balancer.       | n/a     | no       |
| `tags`                   | Tags to assign to the AKS cluster.                                      | {}      | no       |

## Outputs

| Name                          | Description                                   |
|-------------------------------|-----------------------------------------------|
| `kubernetes_cluster_id`       | The ID of the Kubernetes cluster.              |
| `kubernetes_cluster_name`     | The name of the Kubernetes cluster.            |
| `kube_config`                 | The Kubernetes configuration for accessing the cluster. |
