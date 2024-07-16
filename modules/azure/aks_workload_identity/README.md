# Azure Workload Identity Resource Terraform Module

This repository contains a Terraform module that manages an Azure Workload Identity. The configuration sets up an Workload Identity in a specified resource group with specified settings.

### Basic Usage Creating an Azure Workload Identity Resource with Advanced Settings

module "aks_workload_identity" {
  source = "path_to_your_module"

  identity_name       = "example-identity-name"
  resource_group_name = "example-resource-group"
  location            = "East US"
  scope               = var.scope
  role_definition_name = var.role_definition_name

  aks_name                  = "example-aks-name"
  dns_prefix                = "example-dns-prefix"

}

