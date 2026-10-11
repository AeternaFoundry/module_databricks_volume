variable "volumes" {
  description = <<EOT
Map of volumes, attributes below
Required:
    - catalog_name
    - name
    - schema_name
    - volume_type
Optional:
    - comment
    - owner
    - storage_location
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    catalog_name     = string
    name             = string
    schema_name      = string
    volume_type      = string
    comment          = optional(string)
    owner            = optional(string)
    storage_location = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

