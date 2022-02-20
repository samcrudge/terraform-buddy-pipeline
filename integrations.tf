resource "buddy_integration" "aws" {
  count = var.integration ? 1 : 0

  domain = var.domain
  name   = var.integration_name
  # Type allowed: DIGITAL_OCEAN, AMAZON, SHOPIFY, PUSHOVER, RACKSPACE, CLOUDFLARE, NEW_RELIC, SENTRY, ROLLBAR, DATADOG, DO_SPACES, HONEYBADGER, VULTR, SENTRY_ENTERPRISE, LOGGLY, FIREBASE, UPCLOUD, GHOST_INSPECTOR, AZURE_CLOUD, DOCKER_HUB, GOOGLE_SERVICE_ACCOUNT
  type = var.integration_type
  # Token scopes required: INTEGRATION_ADD, INTEGRATION_MANAGE, INTEGRATION_INFO
  # Optional scopes: PRIVATE, WORKSPACE, ADMIN, GROUP, PROJECT, ADMIN_IN_PROJECT, GROUP_IN_PROJECT
  scope = var.integration_type
  # Optional access_key   Provide for: DO_SPACES, AMAZON, PUSHOVER
  access_key = var.access_key
  secret_key = var.secret_key
  # The integration's API key. Provide for: CLOUDFLARE, GOOGLE_SERVICE_ACCOUNT
  api_key = var.api_key
  # The integration's application's ID. Provide for: AZURE_CLOUD
  app_id = var.app_id
  # Provide for: CLOUDFLARE
  email = var.cloudflare_email
  # Provide along with scopes: GROUP, GROUP_IN_PROJECT
  group_id = var.group_id
  # Provide for: AZURE_CLOUD, UPCLOUD, DOCKER_HUB
  password = var.integration_password
  # Provide along with scopes: PROJECT, ADMIN_IN_PROJECT, GROUP_IN_PROJECT
  project_name = data.buddy_project.by_display_name.display_name
  # Provide for: AMAZON
  # ! Not Working
  # * Did you mean to define a block of type "role_assumption"?
  # role_assumption = var.role_assumption
  # Provide for: SHOPIFY
  shop = var.integration_shop
  # Provide for: AZURE_CLOUD
  tenant_id = var.tenant_id
  # Provide for: DIGITAL_OCEAN, SHOPIFY, RACKSPACE, CLOUDFLARE, NEW_RELIC, SENTRY, ROLLBAR, DATADOG, HONEYBADGER, VULTR, SENTRY_ENTERPRISE, LOGGLY, FIREBASE, GHOST_INSPECTOR, PUSHOVER
  token = var.integration_token
  # Provide for: UPCLOUD, RACKSPACE, DOCKER_HUB
  username = var.integration_username
}
