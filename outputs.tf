output "project_variable_sets_id" {
  description = "Map of id values across all project_variable_sets, keyed the same as var.project_variable_sets except keys with no id are omitted"
  value       = { for k, v in tfe_project_variable_set.project_variable_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_variable_sets_project_id" {
  description = "Map of project_id values across all project_variable_sets, keyed the same as var.project_variable_sets except keys with no project_id are omitted"
  value       = { for k, v in tfe_project_variable_set.project_variable_sets : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "project_variable_sets_variable_set_id" {
  description = "Map of variable_set_id values across all project_variable_sets, keyed the same as var.project_variable_sets except keys with no variable_set_id are omitted"
  value       = { for k, v in tfe_project_variable_set.project_variable_sets : k => v.variable_set_id if v.variable_set_id != null && length(v.variable_set_id) > 0 }
}

