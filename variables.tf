variable "project_variable_sets" {
  description = <<EOT
Map of project_variable_sets, attributes below
Required:
    - project_id
    - variable_set_id
EOT

  type = map(object({
    project_id      = string
    variable_set_id = string
  }))
}

