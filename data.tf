data "buddy_project" "by_display_name" {
  domain       = var.domain
  display_name = var.display_name
}

data "buddy_workspace" "ws" {
  domain = var.domain
}
