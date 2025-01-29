variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"  # Default, but Terraform Cloud can override
}

variable "gcp_project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "gcp_region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "gcp_credentials" {
  description = "GCP credentials JSON (stored in Terraform Cloud as an environment variable)"
  type        = string
  sensitive   = true
}
