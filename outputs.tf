output "volumes_id" {
  description = "Map of id values across all volumes, keyed the same as var.volumes except keys with no id are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "volumes_catalog_name" {
  description = "Map of catalog_name values across all volumes, keyed the same as var.volumes except keys with no catalog_name are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "volumes_comment" {
  description = "Map of comment values across all volumes, keyed the same as var.volumes except keys with no comment are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "volumes_name" {
  description = "Map of name values across all volumes, keyed the same as var.volumes except keys with no name are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "volumes_owner" {
  description = "Map of owner values across all volumes, keyed the same as var.volumes except keys with no owner are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "volumes_provider_config" {
  description = "Map of provider_config values across all volumes, keyed the same as var.volumes except keys with no provider_config are omitted"
  value       = { for k, v in databricks_volume.volumes : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "volumes_schema_name" {
  description = "Map of schema_name values across all volumes, keyed the same as var.volumes except keys with no schema_name are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "volumes_storage_location" {
  description = "Map of storage_location values across all volumes, keyed the same as var.volumes except keys with no storage_location are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.storage_location if v.storage_location != null && length(v.storage_location) > 0 }
}
output "volumes_volume_path" {
  description = "Map of volume_path values across all volumes, keyed the same as var.volumes except keys with no volume_path are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.volume_path if v.volume_path != null && length(v.volume_path) > 0 }
}
output "volumes_volume_type" {
  description = "Map of volume_type values across all volumes, keyed the same as var.volumes except keys with no volume_type are omitted"
  value       = { for k, v in databricks_volume.volumes : k => v.volume_type if v.volume_type != null && length(v.volume_type) > 0 }
}

