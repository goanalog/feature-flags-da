output "dashboard_url" {
  description = "Click this link to go directly to your new Feature Flag dashboard."
  # This is the correct way: Use the module's own URL output.
  value       = module.app_config.app_config_url
}

output "app_config_instance_name" {
  description = "The name of the deployed App Configuration service."
  value       = var.service_name
}

output "app_config_guid" {
  description = "The unique GUID for the service instance (used by SDKs)."
  value       = module.app_config.app_config_guid
  sensitive   = true
}

output "app_config_region" {
  description = "The region of the service instance (used by SDKs)."
  value       = var.region
}