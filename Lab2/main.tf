terraform {
  required_version = ">=1.5.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.62.1"
    }
  }
  cloud {
    organization = "robbiemueller"

    workspaces {
      name = "acloudguru"
    }
  }
}

provider "azurerm" {
  features {

  }
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "810-6fed73d2-migrate-terraform-state-to-terraform"
  location = "South Central US"
}
