provider "aws" {
  region = var.aws_region
}

provider "google" {
  credentials = jsondecode(env("GOOGLE_CREDENTIALS"))  # Read from environment variable
  project     = env("GCP_PROJECT_ID")  # Read from environment variable
  region      = env("GCP_REGION")
}
