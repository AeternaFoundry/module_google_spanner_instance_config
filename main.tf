resource "google_spanner_instance_config" "spanner_instance_configs" {
  for_each = var.spanner_instance_configs

  display_name    = each.value.display_name
  base_config     = each.value.base_config
  deletion_policy = each.value.deletion_policy
  labels          = each.value.labels
  name            = each.value.name
  project         = each.value.project

  dynamic "replicas" {
    for_each = each.value.replicas
    content {
      default_leader_location = replicas.value.default_leader_location
      location                = replicas.value.location
      type                    = replicas.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

