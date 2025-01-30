output "aws_instance_id" {
  value = aws_instance.aws_vm.id
}

output "aws_instance_public_ip" {
  value = aws_instance.aws_vm.public_ip
}

output "gcp_instance_id" {
  value = google_compute_instance.gcp_vm.id
}

output "gcp_instance_public_ip" {
  value = google_compute_instance.gcp_vm.network_interface.0.access_config.0.nat_ip
}
