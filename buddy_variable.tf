resource "buddy_variable" "secrets" {
  count = var.buddy_variable.domain ? 1 : 0

  domain       = var.domain
  key          = var.budvar_key
  value        = var.budvar_value
  action_id    = var.budvar_action_id
  description  = var.budvar_description
  encrypted    = var.budvar_encryped
  pipeline_id  = data.buddy_projects.project.id
  project_name = data.buddy_projects.project.name
  settable     = var.budvar_settable
}
