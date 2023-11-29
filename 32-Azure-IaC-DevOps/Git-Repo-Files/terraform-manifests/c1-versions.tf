# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }    
  }
# Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
  backend "azurerm" {
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "terraformstate211"
    container_name        = "tfstatefiles"
    key                   = "project-1-eastus2-terraform.tfstate"
  }   
}

# Provider Block
provider "azurerm" {
 features {}          
}


