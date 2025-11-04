terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.60"
    }
  }
}

provider "ibm" {
  region = var.region
}

data "ibm_resource_group" "group" {
  name = var.resource_group_name
}

# We are no longer using the module. We are using the raw resource.
resource "ibm_resource_instance" "app_config_instance" {
  name              = var.service_name
  service           = "apprapp" # This is the service name from the log
  plan              = "lite"    # This is the 'quickstart' flavor
  location          = var.region
  resource_group_id = data.ibm_resource_group.group.id
  tags              = ["da", "feature-flags", "lite", "quickstart"]
}