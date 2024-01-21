terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.12.0"
    }
  }
}

provider "google" {
  # Configuration options
  #project id is the id of the project you created in the google cloud console
  project = "etl-project-411900"
  #region is the region you want to create the resources in ,chose the one closest to you
  region = "europe-southwest1"
  #credentials is the path to the json file of ur service account
  credentials = "./keys/my-creds.json"
}

resource "google_storage_bucket" "etl_bucket" {
    name          = "etl-bucket-42069"
    location      = "europe-southwest1"
    force_destroy = true
}
