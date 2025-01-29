variable "AWS_REGION" {
  type    = string
}

variable "GCP_PROJECT_ID" {
  type = string
}

variable "GCP_REGION" {
  type = string
}

variable "GOOGLE_CREDENTIALS" {
  type      = string
  sensitive = true
}
