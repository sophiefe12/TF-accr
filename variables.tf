# AWS Variables
variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "AWS Access Key ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "AWS Secret Access Key"
}

variable "AWS_REGION" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

# GCP Variables
variable "GCP_PROJECT_ID" {
  type        = string
  description = "GCP Project ID"
}

variable "GCP_REGION" {
  type        = string
  description = "GCP Region"
  default     = "us-central1"
}

variable "GOOGLE_CREDENTIALS" {
  type        = string
  description = "GCP Service Account Credentials"
}
