variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "GCP_PROJECT_ID" {
  description = "GCP Project ID"
  type        = string
}

variable "GCP_REGION" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "GOOGLE_CREDENTIALS" {
  description = "GCP credentials JSON (stored in Terraform Cloud)"
  type        = string
  sensitive   = true
}
