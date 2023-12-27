output "vault_name" {
  description = "The name of the Recovery Services Vault."
  value       = azurerm_recovery_services_vault.this.name
}

output "vault_principal_id" {
  description = "The principal id of the system managed identity for the Recovery Services Vault."
  value       = azurerm_recovery_services_vault.this.identity.principal_id
}
