variable "spanner_instance_configs" {
  description = <<EOT
Map of spanner_instance_configs, attributes below
Required:
    - display_name
    - replicas (block):
        - default_leader_location (optional)
        - location (optional)
        - type (optional)
Optional:
    - base_config
    - deletion_policy
    - labels
    - name
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name    = string
    base_config     = optional(string)
    deletion_policy = optional(string)
    labels          = optional(map(string))
    name            = optional(string)
    project         = optional(string)
    replicas = list(object({
      default_leader_location = optional(bool)
      location                = optional(string)
      type                    = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.spanner_instance_configs : (
        length(v.replicas) >= 1
      )
    ])
    error_message = "Each replicas list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

