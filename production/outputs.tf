output "dashboard_url" {
  description = "Click this link to go directly to your new Feature Flag dashboard."
  
  # We can now access the attribute directly from the resource.
  value       = ibm_resource_instance.app_config_instance.dashboard_url
}

output "app_config_instance_name" {
  description = "The name of the deployed App Configuration service."
  value       = ibm_resource_instance.app_config_instance.name
}

output "app_config_guid" {
  description = "The unique GUID for the service instance (used by SDKs)."
  value       = ibm_resource_instance.app_config_instance.guid
  sensitive   = true
}

output "app_config_region" {
  description = "The region of the service instance (used by SDKs)."
  value       = ibm_resource_instance.app_config_instance.location
}