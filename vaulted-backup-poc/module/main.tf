data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name
}

resource "azurerm_recovery_services_vault" "this" {
  name = var.vault_name

  resource_group_name = var.resource_group_name
  location            = var.location

  sku                 = var.sku
  soft_delete_enabled = var.soft_delete_enabled
  storage_mode_type   = var.storage_mode_type
  immutability        = var.vault_immutability

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_role_assignment" "this" {
  principal_id         = azurerm_recovery_services_vault.this.identity.principal_id
  scope                = data.azurerm_storage_account.this.id
  role_definition_name = "Backup Contributor"
}
