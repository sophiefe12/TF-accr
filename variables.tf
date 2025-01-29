variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "gcp_project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "gcp_region" {
  description = "GCP Region"
  type        = string
}

variable "gcp_credentials" {
  description = "GCP credentials JSON (stored in Terraform Cloud as an environment variable)"
  type        = string
  sensitive   = true
}
