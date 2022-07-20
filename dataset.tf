resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "raw_${var.business_unit}_${var.country}_${var.origin_system}_${var.environment}"
  location                    = var.gcp_region
  default_table_expiration_ms = 3600000
  delete_contents_on_destroy = true
}