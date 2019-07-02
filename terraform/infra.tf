terraform {
  backend "gcs" {
    bucket = "sw-tania"
    region = "us-east1"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "skywiz-sandbox"
  region = "us-east1"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "tania-batch-pipeline"
  storage_class = "REGIONAL"
  location  = "us-east1"
}
