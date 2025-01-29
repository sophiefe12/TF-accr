variable "AWS_REGION" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "GCP_PROJECT_ID" {
  type        = string
}

variable "GCP_REGION" {
  type        = string
  default     = "us-central1"
}

variable "GOOGLE_CREDENTIALS" {
  type        = string
  sensitive   = true
}
