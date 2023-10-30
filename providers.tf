provider "google" {
  credentials = file("terraform-sa.json")
  project     = "devops-training-402109"
  region      = "us-central1" # Change to your desired region
}