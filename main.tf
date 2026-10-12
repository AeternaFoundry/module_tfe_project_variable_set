resource "tfe_project_variable_set" "project_variable_sets" {
  for_each = var.project_variable_sets

  project_id      = each.value.project_id
  variable_set_id = each.value.variable_set_id
}

