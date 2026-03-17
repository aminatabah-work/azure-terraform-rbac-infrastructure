terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-azure-rbac-lab"
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = "abahstorage12345"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_role_assignment" "storage_reader" {
  scope                = azurerm_storage_account.storage.id
  role_definition_name = "Reader"
  principal_id         = var.principal_id
}
