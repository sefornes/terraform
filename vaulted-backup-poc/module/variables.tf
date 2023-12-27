variable "resource_group_name" {
  description = "The name of the resource group to create the resources in."
  type        = string
}

variable "location" {
  description = "The location to create the resources in."
  type        = string
}

variable "vault_name" {
  description = "The name of the Recovery Services vault."
  type        = string
}

variable "sku" {
  description = "The SKU of the Recovery Services Vault. Possible values are: Standard, RS0."
  type        = string
  default     = "Standard"
}

variable "soft_delete_enabled" {
  description = "(Optional) Is soft delete enable for this Vault? Defaults to 'true'."
  type        = string
  default     = "true"
}

variable "storage_mode_type" {
  description = "The storage type of the Recovery Services Vault. Possible values are GeoRedundant, LocallyRedundant and ZoneRedundant. Defaults to GeoRedundant."
  type        = string
  default     = "GeoRedundant"
}

variable "storage_account_name" {
  description = "The name of the Storage Account to configure vaulted backup for."
  type        = string
}

variable "storage_account_resource_group_name" {
  description = "The name of the resource group where the Storage Account is located."
  type        = string
}

variable "vault_immutability" {
  description = "Immutability Settings of the vault, possible values include: Locked, Unlocked and Disabled. Defaults to Disabled."
  type        = string
  default     = "Disabled"
}
