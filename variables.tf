variable "buddy_token" {
  type = string
}

# Buddy Variable
variable "domain" {
  type = string
}
variable "budvar_key" {
  type = string
}
variable "budvar_value" {
  type = string
}
variable "budvar_action_id" {
  type = number
}
variable "budvar_description" {
  type = string
}
variable "budvar_encryped" {
  type = bool
}
variable "budvar_settable" {
  type = bool
}

# Buddy Webhook
variable "webhook" {
  type = bool
}
variable "events" {
  type = list(any)
}
variable "secret_key" {
  type      = string
  sensitive = true
}

# workspace
variable "new_workspace" {

}
variable "ws_name" {
  type = string
}
variable "ws_encryption_salt" {
  type      = string
  sensitive = true
}

# Project
variable "new_project" {
  type = bool
}
variable "display_name" {
  type = string
}
variable "custom_repo_pass" {
  type      = string
  sensitive = true
}
variable "cust_repo_url" {
  type = string
}
variable "cust_repo_user" {
  type = string
}
variable "external_project_id" {
  type = string
}
variable "git_lab_project_id" {
  type = string
}
variable "integration_id" {
  type = string
}

# integration
variable "integration_name" {
  type = string
}
variable "integration_type" {
  type = string
}
variable "scope" {
  type = string
}
variable "access_key" {
  type      = string
  sensitive = true
}
variable "secret_key" {
  type      = string
  sensitive = true
}
variable "api_key" {
  type      = string
  sensitive = true
}
variable "app_id" {
  type = string
}
variable "cloudflare_email" {
  type = string
}
variable "group_id" {
  type = number
}
variable "integration_password" {
  type      = string
  sensitive = true
}
variable "role_assumption" {
  type = list(any)
}
variable "integration_shop" {
  type = string
}
variable "tenant_id" {
  type = string
}
variable "integration_token" {
  type      = string
  sensitive = true
}
variable "integration_username" {
  type = string
}

# Pipeline
variable "pipeline_trigger" {
  type = string
}
variable "pipeline_ref" {
  type = string
}
variable "pipeline_always_from_scratch" {
  type = 
}

# Required
variable "integration" {
  type = bool
}
variable "project_required" {
  type = bool
}
