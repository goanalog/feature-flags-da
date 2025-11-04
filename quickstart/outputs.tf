output "dashboard_url" {
  description = "Click this link to go directly to your new Feature Flag dashboard."
  
  # We must manually construct the CRN, as the module does not output it.
  # CRN format is: crn:v1:bluemix:public:apprapp:<region>:a/<account_id>:<guid>::
  # We get the account_id from the data.ibm_resource_group.group defined in main.tf
  value = format(
    "https://cloud.ibm.com/services/apprapp/%s?paneId=manage",
    urlencode(
      "crn:v1:bluemix:public:apprapp:${var.region}:a/${data.ibm_resource_group.group.account_id}:${module.app_config.app_config_guid}::"
    )
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