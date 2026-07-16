output "postgresql_servers_id" {
  description = "Map of id values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "postgresql_servers_administrator_login" {
  description = "Map of administrator_login values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.administrator_login if v.administrator_login != null && length(v.administrator_login) > 0 }
}
output "postgresql_servers_administrator_login_password" {
  description = "Map of administrator_login_password values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.administrator_login_password if v.administrator_login_password != null && length(v.administrator_login_password) > 0 }
  sensitive   = true
}
output "postgresql_servers_administrator_login_password_wo" {
  description = "Map of administrator_login_password_wo values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.administrator_login_password_wo if v.administrator_login_password_wo != null && length(v.administrator_login_password_wo) > 0 }
}
output "postgresql_servers_administrator_login_password_wo_version" {
  description = "Map of administrator_login_password_wo_version values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.administrator_login_password_wo_version if v.administrator_login_password_wo_version != null }
}
output "postgresql_servers_auto_grow_enabled" {
  description = "Map of auto_grow_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.auto_grow_enabled if v.auto_grow_enabled != null }
}
output "postgresql_servers_backup_retention_days" {
  description = "Map of backup_retention_days values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.backup_retention_days if v.backup_retention_days != null }
}
output "postgresql_servers_create_mode" {
  description = "Map of create_mode values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.create_mode if v.create_mode != null && length(v.create_mode) > 0 }
}
output "postgresql_servers_creation_source_server_id" {
  description = "Map of creation_source_server_id values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.creation_source_server_id if v.creation_source_server_id != null && length(v.creation_source_server_id) > 0 }
}
output "postgresql_servers_fqdn" {
  description = "Map of fqdn values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "postgresql_servers_geo_redundant_backup_enabled" {
  description = "Map of geo_redundant_backup_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.geo_redundant_backup_enabled if v.geo_redundant_backup_enabled != null }
}
output "postgresql_servers_identity" {
  description = "Map of identity values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "postgresql_servers_infrastructure_encryption_enabled" {
  description = "Map of infrastructure_encryption_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.infrastructure_encryption_enabled if v.infrastructure_encryption_enabled != null }
}
output "postgresql_servers_location" {
  description = "Map of location values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.location if v.location != null && length(v.location) > 0 }
}
output "postgresql_servers_name" {
  description = "Map of name values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "postgresql_servers_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "postgresql_servers_resource_group_name" {
  description = "Map of resource_group_name values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "postgresql_servers_restore_point_in_time" {
  description = "Map of restore_point_in_time values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.restore_point_in_time if v.restore_point_in_time != null && length(v.restore_point_in_time) > 0 }
}
output "postgresql_servers_sku_name" {
  description = "Map of sku_name values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "postgresql_servers_ssl_enforcement_enabled" {
  description = "Map of ssl_enforcement_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.ssl_enforcement_enabled if v.ssl_enforcement_enabled != null }
}
output "postgresql_servers_ssl_minimal_tls_version_enforced" {
  description = "Map of ssl_minimal_tls_version_enforced values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.ssl_minimal_tls_version_enforced if v.ssl_minimal_tls_version_enforced != null && length(v.ssl_minimal_tls_version_enforced) > 0 }
}
output "postgresql_servers_storage_mb" {
  description = "Map of storage_mb values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.storage_mb if v.storage_mb != null }
}
output "postgresql_servers_tags" {
  description = "Map of tags values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "postgresql_servers_threat_detection_policy" {
  description = "Map of threat_detection_policy values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.threat_detection_policy if v.threat_detection_policy != null && length(v.threat_detection_policy) > 0 }
  sensitive   = true
}
output "postgresql_servers_version" {
  description = "Map of version values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.version if v.version != null && length(v.version) > 0 }
}

