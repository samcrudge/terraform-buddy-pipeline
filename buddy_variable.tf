resource "buddy_variable" "secrets" {
  count = var.buddy_secret_req ? 1 : 0

  domain       = var.domain
  key          = var.budvar_key
  value        = var.budvar_value
  action_id    = var.budvar_action_id
  description  = var.budvar_description
  encrypted    = var.budvar_encryped
  pipeline_id  = data.buddy_project.by_display_name.id
  project_name = data.buddy_project.by_display_name.display_name
  settable     = var.budvar_settable
}
