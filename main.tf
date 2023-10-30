resource "google_pubsub_topic" "message_topic" {
  name = "message-topic"
  project = "devops-training-402109"
}

resource "google_pubsub_subscription" "message_subscription" {
  name = "message-subscription"
  topic = google_pubsub_topic.message_topic.name
  project = "devops-training-402109"
}
