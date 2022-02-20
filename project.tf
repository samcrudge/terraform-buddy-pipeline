resource "buddy_workspace" "ws" {
  count = var.new_workspace

  domain          = var.domain
  name            = var.ws_name
  encryption_salt = var.ws_encryption_salt
}

resource "buddy_project" "project" {
  count = var.new_project ? 1 : 0

  domain       = var.domain
  display_name = var.display_name
  # The project's custom repository password
  custom_repo_pass = var.custom_repo_pass
  # The project's custom repository URL. Needed when cloning from a custom repository
  custom_repo_url = var.cust_repo_url
  # The project's custom repository user. Needed when cloning from a custom repository
  custom_repo_user = var.cust_repo_user
  # The project's external project ID. Needed when cloning from GitHub, GitLab or BitBucket
  external_project_id = var.external_project_id
  # The project's GitLab project ID. Needed when cloning from a GitLab
  git_lab_project_id = var.git_lab_project_id
  # The project's integration ID. Needed when cloning from a GitHub, GitLab or BitBucket
  integration_id = var.integration_id
}

