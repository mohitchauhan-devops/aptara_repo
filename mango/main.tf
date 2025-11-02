terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.43.0"
    }
  }
}

provider "azurerm" {
  features {}
    subscription_id = "85bce315-2d40-4002-a3d1-b7f28202855c"
  
}

resource "azurerm_resource_group" "rg123" {
  name     = "rg-feku"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg1234" {
  name     = "rg-chor"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg1235" {
  name     = "rg-mahachor"
  location = "West Europe"
  tags = {
    environment = "dev"
  }
}