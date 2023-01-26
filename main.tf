terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "azure_rg" {
    source = "./modules/rg_module"
    resource_group_location = var.resource_group_location
    resource_group_name = var.resource_group_name  
}