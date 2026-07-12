data "azurerm_key_vault_secret" "administrator_login_password" {
  for_each     = { for k, v in var.postgresql_servers : k => v if v.administrator_login_password_key_vault_id != null && v.administrator_login_password_key_vault_secret_name != null }
  name         = each.value.administrator_login_password_key_vault_secret_name
  key_vault_id = each.value.administrator_login_password_key_vault_id
}
resource "azurerm_postgresql_server" "postgresql_servers" {
  for_each = var.postgresql_servers

  location                                = each.value.location
  name                                    = each.value.name
  resource_group_name                     = each.value.resource_group_name
  sku_name                                = each.value.sku_name
  ssl_enforcement_enabled                 = each.value.ssl_enforcement_enabled
  version                                 = each.value.version
  ssl_minimal_tls_version_enforced        = each.value.ssl_minimal_tls_version_enforced
  restore_point_in_time                   = each.value.restore_point_in_time
  public_network_access_enabled           = each.value.public_network_access_enabled
  infrastructure_encryption_enabled       = each.value.infrastructure_encryption_enabled
  geo_redundant_backup_enabled            = each.value.geo_redundant_backup_enabled
  creation_source_server_id               = each.value.creation_source_server_id
  auto_grow_enabled                       = each.value.auto_grow_enabled
  backup_retention_days                   = each.value.backup_retention_days
  storage_mb                              = each.value.storage_mb
  administrator_login_password_wo_version = each.value.administrator_login_password_wo_version
  administrator_login_password_wo         = each.value.administrator_login_password_wo
  administrator_login_password            = each.value.administrator_login_password != null ? each.value.administrator_login_password : try(data.azurerm_key_vault_secret.administrator_login_password[each.key].value, null)
  administrator_login                     = each.value.administrator_login
  create_mode                             = each.value.create_mode
  tags                                    = each.value.tags

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      type = identity.value.type
    }
  }

  dynamic "threat_detection_policy" {
    for_each = each.value.threat_detection_policy != null ? [each.value.threat_detection_policy] : []
    content {
      disabled_alerts            = threat_detection_policy.value.disabled_alerts
      email_account_admins       = threat_detection_policy.value.email_account_admins
      email_addresses            = threat_detection_policy.value.email_addresses
      enabled                    = threat_detection_policy.value.enabled
      retention_days             = threat_detection_policy.value.retention_days
      storage_account_access_key = threat_detection_policy.value.storage_account_access_key
      storage_endpoint           = threat_detection_policy.value.storage_endpoint
    }
  }
}

