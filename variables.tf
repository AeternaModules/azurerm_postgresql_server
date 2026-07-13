variable "postgresql_servers" {
  description = <<EOT
Map of postgresql_servers, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
    - ssl_enforcement_enabled
    - version
Optional:
    - administrator_login
    - administrator_login_password
    - administrator_login_password_key_vault_id (alternative to administrator_login_password - read from Key Vault instead)
    - administrator_login_password_key_vault_secret_name (alternative to administrator_login_password - read from Key Vault instead)
    - administrator_login_password_wo
    - administrator_login_password_wo_version
    - auto_grow_enabled
    - backup_retention_days
    - create_mode
    - creation_source_server_id
    - geo_redundant_backup_enabled
    - infrastructure_encryption_enabled
    - public_network_access_enabled
    - restore_point_in_time
    - ssl_minimal_tls_version_enforced
    - storage_mb
    - tags
    - identity (block):
        - type (required)
    - threat_detection_policy (block):
        - disabled_alerts (optional)
        - email_account_admins (optional)
        - email_addresses (optional)
        - enabled (optional)
        - retention_days (optional)
        - storage_account_access_key (optional)
        - storage_endpoint (optional)
EOT

  type = map(object({
    location                                           = string
    name                                               = string
    resource_group_name                                = string
    sku_name                                           = string
    ssl_enforcement_enabled                            = bool
    version                                            = string
    ssl_minimal_tls_version_enforced                   = optional(string)
    restore_point_in_time                              = optional(string)
    public_network_access_enabled                      = optional(bool)
    infrastructure_encryption_enabled                  = optional(bool)
    geo_redundant_backup_enabled                       = optional(bool)
    creation_source_server_id                          = optional(string)
    auto_grow_enabled                                  = optional(bool)
    backup_retention_days                              = optional(number)
    storage_mb                                         = optional(number)
    administrator_login_password_wo_version            = optional(number)
    administrator_login_password_wo                    = optional(string)
    administrator_login_password                       = optional(string)
    administrator_login_password_key_vault_id          = optional(string)
    administrator_login_password_key_vault_secret_name = optional(string)
    administrator_login                                = optional(string)
    create_mode                                        = optional(string)
    tags                                               = optional(map(string))
    identity = optional(object({
      type = string
    }))
    threat_detection_policy = optional(object({
      disabled_alerts            = optional(set(string))
      email_account_admins       = optional(bool)
      email_addresses            = optional(set(string))
      enabled                    = optional(bool)
      retention_days             = optional(number)
      storage_account_access_key = optional(string)
      storage_endpoint           = optional(string)
    }))
  }))
}

