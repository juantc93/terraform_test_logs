# Creacion de bucket landing
resource "google_storage_bucket" "landing_bucket" {
  name                        = "lnd_${var.business_unit}_${var.country}_${var.origin_system}_${var.environment}_fa7919d0-0869-11ed-861d-0242ac120002"
  location                    = var.gcp_region
  storage_class               = "standard"
  force_destroy               = true
  uniform_bucket_level_access = true

}
