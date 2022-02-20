resource "buddy_webhook" "push" {
  count = var.webhook ? 1 : 0

  domain = var.domain
  # Events Allowed: PUSH, EXECUTION_STARTED, EXECUTION_SUCCESSFUL, EXECUTION_FAILED, EXECUTION_FINISHED
  events     = var.events
  projects   = [data.buddy_project.by_display_name.display_name]
  target_url = data.buddy_workspace.ws.html_url
  secret_key = var.secret_key
}
