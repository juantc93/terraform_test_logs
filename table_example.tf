resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = "${var.transaction_example}_${var.origin_system}"

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "default"
    bu=var.business_unit
    country=var.country
    system=var.origin_system
    type=var.label_object_type
    domain="WIP"
    capability="WIP"
    engine=var.label_engine
    pii=var.label_pii
  }
}
