# This block defines local variables to build and encode the CRN cleanly.
locals {
  # 1. Build the raw CRN string using join()
  # This joins a list of strings with an empty "" separator.
  raw_crn = join("", [
    "crn:v1:bluemix:public:apprapp:",
    var.region,
    ":a/",
    data.ibm_resource_group.group.account_id,
    ":",
    module.app_config.app_config_guid,
    "::"
  ])
  
  # 2. URL-encode the raw string
  encoded_crn = urlencode(local.raw_crn)
}

output "dashboard_url" {
  description = "Click this link to go directly to your new Feature Flag dashboard."
  
  # 3. Build the final URL using join()
  # This avoids all parsing conflicts.
  value = join("", [
    "https://cloud.ibm.com/services/apprapp/",
    local.encoded_crn,
    "?paneId=manage"
  ])
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