variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
}
# define GCP region
variable "gcp_region" {
  type        = string
  description = "GCP region"
}
# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}

variable "business_unit" {
  description = "falabella business unit"
  type        = string
}

variable "country" {
  description = "falabella country"
  type        = string
}

variable "origin_system" {
  description = "falabella origin system"
  type        = string
}

variable "environment" {
  description = "execution environment (dev,prd,etc.)"
  type        = string
}

variable "transaction_example" {
  description = "transaction example"
  type        = string
}

variable "label_object_type" {
  description = "transaction example"
  type        = string
}

variable "label_engine" {
  description = "transaction example"
  type        = string
}

variable "label_pii" {
  description = "transaction example"
  type        = bool
}