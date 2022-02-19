resource "buddy_pipeline" "test" {
  count = var.pipeline ? 1 : 0

  domain                        = var.domain
  project_name                  = data.buddy_project.project.display_name
  name                          = var.pipe_name
  on                            = var.pipeline_react
  refs                          = var.pipeline_react == "CLICK" ? var.pipeline_ref : null
  always_from_scratch           = var.pipeline_always_from_scratch
  auto_clear_cache              = var.pipeline_auto_clear_cache
  cron                          = var.pipeline_start_date != null && var.pipeline_delay != null ? null : var.pipeline_cron
  delay                         = var.pipeline_start_date != null ? null : var.pipeline_cron
  do_not_create_commit_status   = var.pipeline_commit_status
  event                         = var.pipeline_react == "EVENT" ? var.pipeline_event : null
  execution_message_template    = var.pipeline_execution_msg_template
  fail_on_prepare_env_warning   = var.pipeline_env_warning_fail
  fetch_all_refs                = var.pipeline_fetch_all_refs
  ignore_fail_on_project_status = var.pipeline_ignore_fail_status
  no_skip_to_most_recent        = var.pipeline_no_skip_most_recent
  paused                        = var.pipeline_react == "SCHEDULE" ? var.pipeline_paused : null
  priority                      = var.pipeline_priority
  start_date                    = var.pipeline_react == "SCHEDULE" && var.cron == null ? var.pipeline_start_date : null
  target_site_url               = var.pipeline_target_url
  trigger_condition             = var.pipeline_trigger_condition
  worker                        = var.pipeline_worker
}
