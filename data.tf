data "buddy_project" "project" {
  domain = var.domain
}

data "buddy_workspace" "ws" {
  domain = var.domain
}
