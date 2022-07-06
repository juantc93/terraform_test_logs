
variable "bucket_name" {
  description = "Name of the GCP storage bucket"
  type        = string
}

# variable "bucket_backend" {
#     description = "Name of the GCP storage bucket to store the terraform state"
#     type        = string
# }



variable "bucket_storage_class" {
  description = "Bucket storage storage class"
  type        = string
  default     = "standard"
}

variable "pub_sub_falabella_logs_landing_topic_name" {
  description = "Pub sub trigger topic name"
  type        = string
  default     = "standard"
}


variable "cloud_run_microservice_container" {
  description = "container-image for cloud run function"
  type        = string
  default     = "standard"
}

variable "cloud_run_microservice_name" {
  description = "container-image for cloud run function"
  type        = string
  default     = "standard"
}

variable "region_cloud_run_microservice" {
  description = "container-image for cloud run function"
  type        = string
  default     = "standard"
}

variable "cloud_function_bucket_name" {
  description = "bucket name to store the cloud function files"
  type        = string
  default     = "standard"
}


variable "region_cloud_function_bucket" {
  description = "region of the bucket to store the cloud function files"
  type        = string
  default     = "standard"
}

variable "cloud_function_bucket_storage_class" {
  description = "storage class of the bucket to store the cloud function files"
  type        = string
  default     = "standard"
}


variable "project_number" {
  description = "number of the gcp project"
  type        = string
  default     = "standard"
}

variable "pubsub_service_account_name" {
  description = "ID de la service account configurada para pubsub"
  type = string
}
