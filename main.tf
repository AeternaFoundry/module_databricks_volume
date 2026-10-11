resource "databricks_volume" "volumes" {
  for_each = var.volumes

  catalog_name     = each.value.catalog_name
  name             = each.value.name
  schema_name      = each.value.schema_name
  volume_type      = each.value.volume_type
  comment          = each.value.comment
  owner            = each.value.owner
  storage_location = each.value.storage_location

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

