locals {
  enabled = var.webhook ? 1 : 0
}

resource "buddy_webhook" "push" {
  count = local.enabled ? 1 : 0

  domain = var.domain
  # Events Allowed: PUSH, EXECUTION_STARTED, EXECUTION_SUCCESSFUL, EXECUTION_FAILED, EXECUTION_FINISHED
  events     = var.events
  projects   = [data.buddy_project.project.name]
  target_url = data.buddy_workspace.wc.html_url
  secret_key = var.secret_key
}
