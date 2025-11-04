output "dashboard_url" {
  description = "Click this link to go directly to your new Feature Flag dashboard."
  
  # This is the correct, direct path to the attribute
  # from the module's 'resource_instance' output.
  value       = module.app_config.resource_instance.dashboard_url
}

output "app_config_instance_name" {
  description = "The name of the deployed App Configuration service."
  value       = var.service_name
}

output "app_config_guid" {
  description = "The unique GUID for the service instance (used by SDKs)."
  # This output is also on the resource_instance object.
  value       = module.app_config.resource_instance.guid
  sensitive   = true
}

output "app_config_region" {
  description = "The region of the service instance (used by SDKs)."
  value       = var.region
}