variable "buddy_token" {
  type = string
}

# Buddy Variable
variable "domain" {
  type    = string
  default = "CHANGEME"
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
  default = [
    {
      refs = ["CHANGEME"]
      type = "CHANGEME"
    }
  ]
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
  type = number
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
variable "pipeline_name" {
  type        = string
  description = "The pipelines name."
}
variable "pipeline_react" {
  type        = string
  description = "The pipeline's trigger mode. Allowed: CLICK, EVENT, SCHEDULE"
  default     = "EVENT"
}
variable "pipeline_project_name" {
  type        = string
  description = "The project's name."
}
variable "pipeline_always_from_scratch" {
  type        = bool
  description = "Defines whether or not to upload everything from scratch on every run."
}
variable "pipeline_auto_clear_cache" {
  type        = bool
  description = "Defines whether or not to automatically clear cache before running the pipeline."
}
variable "pipeline_cron" {
  type        = string
  description = "The pipeline's CRON expression. Required if the pipeline is set to on: SCHEDULE and neither start_date nor delay is specified."
}
variable "pipeline_delay" {
  type        = number
  description = "The pipeline's runs interval (in minutes). Required if the pipeline is set to on: SCHEDULE and no cron is specified."
}
variable "pipeline_commit_status" {
  type        = bool
  description = "Defines whether or not to omit sending commit statuses to GitHub or GitLab upon execution."
}
variable "event_refs" {
  type = list(string)
}
variable "event_type" {
  type = string
}
variable "pipeline_execution_msg_template" {
  type        = string
  description = "The pipeline's run title."
  default     = "$BUDDY_EXECUTION_REVISION_SUBJECT"
}
variable "pipeline_env_warning_fail" {
  type        = bool
  description = "Defines either or not run should fail if any warning occurs in prepare environment."
  default     = true
}
variable "pipeline_fetch_all_refs" {
  type        = bool
  description = "Defines either or not fetch all refs from repository."
  default     = true
}
variable "pipeline_ignore_fail_status" {
  type        = bool
  description = "If set to true the status of a given pipeline will be ignored on the projects' dashboard."
}
variable "pipeline_no_skip_most_recent" {
  type        = bool
  description = "Defines whether or not to skip run to the most recent run."
}
variable "pipeline_paused" {
  type        = bool
  description = "Is the pipeline's run paused. Restricted to on: SCHEDULE."
}
variable "pipeline_priority" {
  type        = string
  description = "The pipeline's priority. Allowed: LOW, NORMAL, HIGH."
}
variable "pipeline_ref" {
  type        = list(string)
  description = "The pipeline's list of refs. Set it if on: CLICK."
}
variable "pipeline_start_date" {
  type        = string
  description = "The pipeline's start date. Required if the pipeline is set to on: SCHEDULE and no cron is specified. Format: 2016-11-18T12:38:16.000Z."
}
variable "pipeline_target_url" {
  type        = string
  description = "The pipeline's website target URL."
}
variable "trig_condition" {
  type = string
}
variable "trig_set_hours" {
}
variable "trig_set_days" {
}
variable "trig_zone_id" {
}
variable "trig_var_key" {
}
variable "trig_var_value" {
}
variable "trig_path" {
}
variable "trig_project_name" {
}
variable "trig_pipeline_name" {
}
variable "pipeline_worker" {
  type        = string
  description = "The pipeline's worker name. ONLY for Buddy Enterprise."
}

# Required
variable "integration" {
  type = bool
}
variable "project_required" {
  type = bool
}

variable "base_url" {
  type    = string
  default = "CHANGEME"
}

variable "insecure" {
  type    = bool
  default = false
}

variable "buddy_secret_req" {
  type    = bool
  default = false
}

variable "cron" {
  type = string
}

variable "pipeline" {
  type = bool
}

