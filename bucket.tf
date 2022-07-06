# Creacion de bucket de Google Cloud Storage
resource "google_storage_bucket" "landing" {
  name                        = var.bucket_name
  location                    = var.gcp_region
  storage_class               = var.bucket_storage_class
  force_destroy               = true
  uniform_bucket_level_access = true

}


# resource "null_resource" "upload_folder_content" {

# provisioner "local-exec" {

#    command = "gsutil -m cp -Z -r ../../vector-tiles/tiles/ gs://${var.bucket_name}/"

#  }
# }

