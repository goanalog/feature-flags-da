# Configure the IBM Cloud Provider
terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.60"
    }
  }
}

provider "ibm" {
  # The API key is automatically injected by the IBM Cloud DA service.
  # We only need to set the region from the user's input.
  region = var.region
}

# Find the resource group to deploy into
data "ibm_resource_group" "group" {
  name = var.resource_group_name
}

# Use the official module to create the App Configuration instance
module "app_config" {
  source = "terraform-ibm-modules/app-configuration/ibm"
  version = "1.2.0" # Lock in the version
  
  app_config_name   = var.service_name
  app_config_plan   = "lite" # Hard-coded to the free plan
  resource_group_id = data.ibm_resource_group.group.id
  region            = var.region
  app_config_tags   = ["feature-flags", "lite", "da"]
}