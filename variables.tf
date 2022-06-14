
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

variable "pub-sub-test-topic-name" {
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