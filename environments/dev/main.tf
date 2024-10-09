terraform {
  required_version = ">= 1.0.0"
  backend "gcs" {
    # The bucket name will be provided via CLI or environment variable
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "test_bucket" {
  name          = "${var.project_id}-test-bucket"
  location      = var.region
  force_destroy = true
  storage_class = "STANDARD"
}
