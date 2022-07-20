# Creacion de bucket para carga raw
resource "google_storage_bucket" "raw_bucket" {
  name                        = "raw_${var.business_unit}_${var.country}_${var.origin_system}_${var.environment}_1c0f74a4-086a-11ed-861d-0242ac120002"
  location                    = var.gcp_region
  storage_class               = "standard"
  force_destroy               = true
  uniform_bucket_level_access = true

}
