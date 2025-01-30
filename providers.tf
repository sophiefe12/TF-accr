terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = getenv("AWS_REGION")
  access_key = getenv("AWS_ACCESS_KEY_ID")
  secret_key = getenv("AWS_SECRET_ACCESS_KEY")
}

provider "google" {
  project     = getenv("GCP_PROJECT_ID")
  region      = getenv("GCP_REGION")
  credentials = getenv("GOOGLE_CREDENTIALS")
}
