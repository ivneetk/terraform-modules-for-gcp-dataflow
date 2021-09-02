resource "google_pubsub_topic" "pubsub_topic_logging" {
    project = var.project
    name = "${var.uuid}_pubsub_topic_logging"
}

resource "google_pubsub_subscription" "pubsub_subscriptin_logging" {
    project = var.project
    name = "${var.uuid}_pusbub_subscription_logging"
    topic = google_pubsub_topic.pubsub_topic_logging.name
}