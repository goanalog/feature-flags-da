# This block defines a local variable to build the CRN string cleanly.
locals {
  raw_crn = "crn:v1:bluemix:public:apprapp:${var.region}:a/${data.ibm_resource_group.group.account_id}:${module.app_config.app_config_guid}::"
}

output "dashboard_url" {
  description = "Click this link to go directly to your new Feature Flag dashboard."
  
  # Now, we just encode the local variable. This is much cleaner
  # and avoids the 'format' and nested 'interpolation' conflicts.
  value = "https://cloud.ibm.com/services/apprapp/${urlencode(local.raw_crn)}?paneId=manage"
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