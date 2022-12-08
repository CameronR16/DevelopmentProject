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
  client_secret   = var.app_reg_secret
  client_id       = var.appid
  tenant_id       = var.tenant_id
  subscription_id = var.sub
}