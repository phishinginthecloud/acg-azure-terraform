terraform {
  required_version = ">=1.5.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.62.1"
    }
  }
}

provider "azurerm" {
  features {

  }
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "809-7d64c99c-deploy-to-azure-using-the-terraform-c"
  location = "West US"
}

resource "azurerm_storage_account" "storage" {
  account_replication_type = "RAGRS"
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = "Standard"
  name                     = "storageacglabtf"
}
