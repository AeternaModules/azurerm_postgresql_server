output "postgresql_servers_administrator_login" {
  description = "Map of administrator_login values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.administrator_login }
}
output "postgresql_servers_administrator_login_password" {
  description = "Map of administrator_login_password values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.administrator_login_password }
  sensitive   = true
}
output "postgresql_servers_administrator_login_password_wo" {
  description = "Map of administrator_login_password_wo values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.administrator_login_password_wo }
}
output "postgresql_servers_administrator_login_password_wo_version" {
  description = "Map of administrator_login_password_wo_version values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.administrator_login_password_wo_version }
}
output "postgresql_servers_auto_grow_enabled" {
  description = "Map of auto_grow_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.auto_grow_enabled }
}
output "postgresql_servers_backup_retention_days" {
  description = "Map of backup_retention_days values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.backup_retention_days }
}
output "postgresql_servers_create_mode" {
  description = "Map of create_mode values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.create_mode }
}
output "postgresql_servers_creation_source_server_id" {
  description = "Map of creation_source_server_id values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.creation_source_server_id }
}
output "postgresql_servers_fqdn" {
  description = "Map of fqdn values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.fqdn }
}
output "postgresql_servers_geo_redundant_backup_enabled" {
  description = "Map of geo_redundant_backup_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.geo_redundant_backup_enabled }
}
output "postgresql_servers_identity" {
  description = "Map of identity values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.identity }
}
output "postgresql_servers_infrastructure_encryption_enabled" {
  description = "Map of infrastructure_encryption_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.infrastructure_encryption_enabled }
}
output "postgresql_servers_location" {
  description = "Map of location values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.location }
}
output "postgresql_servers_name" {
  description = "Map of name values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.name }
}
output "postgresql_servers_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.public_network_access_enabled }
}
output "postgresql_servers_resource_group_name" {
  description = "Map of resource_group_name values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.resource_group_name }
}
output "postgresql_servers_restore_point_in_time" {
  description = "Map of restore_point_in_time values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.restore_point_in_time }
}
output "postgresql_servers_sku_name" {
  description = "Map of sku_name values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.sku_name }
}
output "postgresql_servers_ssl_enforcement_enabled" {
  description = "Map of ssl_enforcement_enabled values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.ssl_enforcement_enabled }
}
output "postgresql_servers_ssl_minimal_tls_version_enforced" {
  description = "Map of ssl_minimal_tls_version_enforced values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.ssl_minimal_tls_version_enforced }
}
output "postgresql_servers_storage_mb" {
  description = "Map of storage_mb values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.storage_mb }
}
output "postgresql_servers_tags" {
  description = "Map of tags values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.tags }
}
output "postgresql_servers_threat_detection_policy" {
  description = "Map of threat_detection_policy values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.threat_detection_policy }
  sensitive   = true
}
output "postgresql_servers_version" {
  description = "Map of version values across all postgresql_servers, keyed the same as var.postgresql_servers"
  value       = { for k, v in azurerm_postgresql_server.postgresql_servers : k => v.version }
}

