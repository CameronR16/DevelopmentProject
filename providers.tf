terraform {
  backend "azurerm" {
    resource_group_name  = "terraformDevelopment-RG"
    storage_account_name = "terraformstatestorac"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"

  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
  
}
