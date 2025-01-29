output "aws_public_ip" {
  description = "Public IP of the AWS instance"
  value       = aws_instance.aws_vm.public_ip
}

output "gcp_external_ip" {
  description = "External IP of the GCP instance"
  value       = google_compute_instance.gcp_vm.network_interface[0].access_config[0].nat_ip
}
