# Terraform Settings Block
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.6.0"
    }
  }
}

provider "google" {
  project = "astral-pivot-437913-g0"
  region = "us-central1"
}

