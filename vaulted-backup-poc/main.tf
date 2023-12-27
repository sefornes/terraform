provider "azurerm" {
  features {}
}

locals {
  resource_group_name = "rg-testing-sef"
  location            = "northeurope"
}

module "storage" {
  source = "github.com/equinor/terraform-azurerm-storage?ref=v12.2.1"

  resource_group_name = local.resource_group_name
  location            = local.location
  account_name        = "sttestingsef01"
}

module "recovery" {
  source = "github.com/sefornes/terraform/vaulted-backup-poc/module"

  vault_name          = "rsv-testing-sef"
  resource_group_name = local.resource_group_name
  location            = local.location

  storage_account_name                = module.storage.account_name
  storage_account_resource_group_name = local.resource_group_name
}
