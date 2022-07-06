# GCP Settings
gcp_project   = "aa-study"
gcp_region    = "us-central1"
gcp_auth_file = "aa-study-b2fb4c6587c9.json"
bucket_name   = "bucket-landing-falabella-logs"
project_number = 835573758019

#pub_sub
pub_sub_falabella_logs_landing_topic_name = "topic-trigger-landing-bucket"
pubsub_service_account_name = "falabella-logs-pubsub"

#landing storage
bucket_storage_class                = "standard"

#cloud run
cloud_run_microservice_container    = "us-central1-docker.pkg.dev/aa-study/gcf-artifacts/docker-log-test-image"
region_cloud_run_microservice       = "us-central1"
cloud_run_microservice_name         = "cloud-run-ms-trigger-dataproc"

#cloud function
cloud_function_bucket_name          = "bucket-cloud-function-code-falabella-logs"
region_cloud_function_bucket        = "us-central1"
cloud_function_bucket_storage_class = "standard"
