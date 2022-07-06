resource "google_pubsub_topic" "pub_sub_falabella_logs_landing_topic" {

  name = var.pub_sub_falabella_logs_landing_topic_name

  labels = {
    kind = "trigger_carga"
  }

  message_retention_duration = "86600s"
}

/* resource "google_pubsub_subscription" "pub-sub-test-topic-data-subscription-push" {
  name  = var.pub_sub_meteorological_data_subscription_push
  topic = google_pubsub_topic.meteorological-data-topic.name

  ack_deadline_seconds = 20

  labels = {
    kind_of_data = "temperature"
  }

  retry_policy {
    minimum_backoff = "60s"
    maximum_backoff = "600s"
  }

  push_config {
    push_endpoint = google_cloud_run_service.cloud_run_microservice.status[0].url

    attributes = {
      x-goog-version = "v1"
    }

    # service to service auth, as this is not deployed publicly
    oidc_token {
      service_account_email = google_service_account.service_account.email
    }
  }
} */

resource "google_project_iam_binding" "project" {
  project = var.gcp_project
  role = "roles/iam.serviceAccountTokenCreator"
  members = [
    "serviceAccount:service-${var.project_number}@gcp-sa-pubsub.iam.gserviceaccount.com",
  ]
} 


resource "google_service_account" "service_account" {
  account_id   = var.pubsub_service_account_name
  display_name = "Cloud Run Pub/Sub Invoker"
}
