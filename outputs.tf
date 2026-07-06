output "postgresql_servers" {
  description = "All postgresql_server resources"
  value       = azurerm_postgresql_server.postgresql_servers
  sensitive   = true
}
output "postgresql_servers_administrator_login" {
  description = "List of administrator_login values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.administrator_login]
}
output "postgresql_servers_administrator_login_password" {
  description = "List of administrator_login_password values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.administrator_login_password]
  sensitive   = true
}
output "postgresql_servers_administrator_login_password_wo" {
  description = "List of administrator_login_password_wo values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.administrator_login_password_wo]
}
output "postgresql_servers_administrator_login_password_wo_version" {
  description = "List of administrator_login_password_wo_version values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.administrator_login_password_wo_version]
}
output "postgresql_servers_auto_grow_enabled" {
  description = "List of auto_grow_enabled values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.auto_grow_enabled]
}
output "postgresql_servers_backup_retention_days" {
  description = "List of backup_retention_days values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.backup_retention_days]
}
output "postgresql_servers_create_mode" {
  description = "List of create_mode values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.create_mode]
}
output "postgresql_servers_creation_source_server_id" {
  description = "List of creation_source_server_id values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.creation_source_server_id]
}
output "postgresql_servers_fqdn" {
  description = "List of fqdn values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.fqdn]
}
output "postgresql_servers_geo_redundant_backup_enabled" {
  description = "List of geo_redundant_backup_enabled values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.geo_redundant_backup_enabled]
}
output "postgresql_servers_identity" {
  description = "List of identity values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.identity]
}
output "postgresql_servers_infrastructure_encryption_enabled" {
  description = "List of infrastructure_encryption_enabled values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.infrastructure_encryption_enabled]
}
output "postgresql_servers_location" {
  description = "List of location values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.location]
}
output "postgresql_servers_name" {
  description = "List of name values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.name]
}
output "postgresql_servers_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.public_network_access_enabled]
}
output "postgresql_servers_resource_group_name" {
  description = "List of resource_group_name values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.resource_group_name]
}
output "postgresql_servers_restore_point_in_time" {
  description = "List of restore_point_in_time values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.restore_point_in_time]
}
output "postgresql_servers_sku_name" {
  description = "List of sku_name values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.sku_name]
}
output "postgresql_servers_ssl_enforcement_enabled" {
  description = "List of ssl_enforcement_enabled values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.ssl_enforcement_enabled]
}
output "postgresql_servers_ssl_minimal_tls_version_enforced" {
  description = "List of ssl_minimal_tls_version_enforced values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.ssl_minimal_tls_version_enforced]
}
output "postgresql_servers_storage_mb" {
  description = "List of storage_mb values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.storage_mb]
}
output "postgresql_servers_tags" {
  description = "List of tags values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.tags]
}
output "postgresql_servers_threat_detection_policy" {
  description = "List of threat_detection_policy values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.threat_detection_policy]
  sensitive   = true
}
output "postgresql_servers_version" {
  description = "List of version values across all postgresql_servers"
  value       = [for k, v in azurerm_postgresql_server.postgresql_servers : v.version]
}

