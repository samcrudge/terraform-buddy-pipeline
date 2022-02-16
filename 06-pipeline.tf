resource "buddy_pipeline" "test" {
  count = var.pipeline ? 1 : 0

  domain              = var.domain
  project_name        = data.buddy_project.display_name
  name                = var.pipe_name
  on                  = var.pipeline_react
  refs                = var.pipeline_trigger ? "CLICK" : null
  always_from_scratch = 
  auto_clear_cache    = 
  cron =
  delay = 
  do_not_create_commit_status = 
  event =
  execution_message_template = 
  fail_on_prepare_env_warning =
  fetch_all_refs = 
  ignore_fail_on_project_status = 
  no_skip_to_most_recent = 
  paused = 
  priority =
  start_date = 
  target_site_url = 
  trigger_condition =
  worker = var.

}
