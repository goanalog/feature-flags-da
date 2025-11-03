output "app_config_instance_name" {
  description = "The name of the deployed App Configuration service."
  # Fix: The module doesn't output the name, so we'll just output
  # the 'service_name' variable that we used to create it.
  value       = var.service_name
}

output "app_config_guid" {
  description = "The unique GUID for the service instance (used by SDKs)."
  # This output 'app_config_guid' is correct and exists in the module.
  value       = module.app_config.app_config_guid
  sensitive   = true
}

output "app_config_region" {
  description = "The region of the service instance (used by SDKs)."
  # Fix: The module doesn't output the region. We'll output
  # the 'region' variable that we used for deployment.
  value       = var.region
}