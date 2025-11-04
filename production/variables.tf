variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group."
  default     = "Default"
}

variable "region" {
  type        = string
  description = "The IBM Cloud region to deploy to."
  default     = "us-south"
}

variable "service_name" {
  type        = string
  description = "A unique name for your App Configuration service instance."
  default     = "my-feature-flag-service-prod"
}