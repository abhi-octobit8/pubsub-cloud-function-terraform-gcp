resource "google_cloudfunctions_function" "example_function" {
  name        = "example-function"
  runtime     = "nodejs14"
  entry_point = "exampleFunction"
  source_archive_bucket = "your-bucket-name"
  source_archive_object = "path-to-your-function-zip-file.zip"
  project     = "your-gcp-project"
  region      = "us-central1" # Change to your desired region

  trigger_http = true

  available_memory_mb = 256
  timeout            = "60s"
  service_account_email = "your-service-account-email@your-gcp-project.iam.gserviceaccount.com"

  environment_variables = {
    PUBSUB_TOPIC = google_pubsub_topic.example_topic.name
  }
}
