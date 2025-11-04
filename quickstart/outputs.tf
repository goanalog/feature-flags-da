output "dashboard_url" {
  description = "Click this link to go directly to your new Feature Flag dashboard."
  # This new format uses the CRN (not GUID) and the '/services' path,
  # matching the working URL format.
  value = format(
    "https://cloud.ibm.com/services/apprapp/%s?paneId=manage",
    urlencode(module.app_config.app_config_crn)
  )
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

output "app_config_crn" {
  description = "The full CRN of the service instance."
  value       = module.app_config.app_config_crn
  sensitive   = true
}