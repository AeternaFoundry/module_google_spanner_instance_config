output "spanner_instance_configs_id" {
  description = "Map of id values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no id are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spanner_instance_configs_base_config" {
  description = "Map of base_config values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no base_config are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.base_config if v.base_config != null && length(v.base_config) > 0 }
}
output "spanner_instance_configs_config_type" {
  description = "Map of config_type values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no config_type are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.config_type if v.config_type != null && length(v.config_type) > 0 }
}
output "spanner_instance_configs_deletion_policy" {
  description = "Map of deletion_policy values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "spanner_instance_configs_display_name" {
  description = "Map of display_name values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no display_name are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "spanner_instance_configs_effective_labels" {
  description = "Map of effective_labels values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no effective_labels are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "spanner_instance_configs_labels" {
  description = "Map of labels values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no labels are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "spanner_instance_configs_name" {
  description = "Map of name values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no name are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spanner_instance_configs_project" {
  description = "Map of project values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no project are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "spanner_instance_configs_replicas" {
  description = "Map of replicas values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no replicas are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.replicas if v.replicas != null && length(v.replicas) > 0 }
}
output "spanner_instance_configs_terraform_labels" {
  description = "Map of terraform_labels values across all spanner_instance_configs, keyed the same as var.spanner_instance_configs except keys with no terraform_labels are omitted"
  value       = { for k, v in google_spanner_instance_config.spanner_instance_configs : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

