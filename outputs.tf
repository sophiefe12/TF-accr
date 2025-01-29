# AWS Outputs
output "aws_instance_id" {
  value = aws_instance.example.id
}

output "aws_instance_public_ip" {
  value = aws_instance.example.public_ip
}

# GCP Outputs
output "gcp_instance_id" {
  value = google_compute_instance.example.id
}

output "gcp_instance_public_ip" {
  value = google_compute_instance.example.network_interface[0].access_config[0].nat_ip
}
