output "aws_vm_public_ip" {
  description = "Public IP of the AWS VM"
  value       = aws_instance.aws_vm.public_ip
}

output "gcp_vm_public_ip" {
  description = "Public IP of the GCP VM"
  value       = google_compute_instance.gcp_vm.network_interface.0.access_config.0.nat_ip
}
