# AWS EC2 Instance
resource "aws_instance" "aws_vm" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux AMI (Change if needed)
  instance_type = "t2.micro"

  tags = {
    Name = "AWS-VM"
  }
}

# GCP Compute Engine Instance
resource "google_compute_instance" "gcp_vm" {
  name         = "gcp-vm"
  machine_type = "f1-micro"
  zone         = "${var.GCP_REGION}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

# Outputs to Display Public IPs
output "aws_vm_public_ip" {
  description = "Public IP of the AWS VM"
  value       = aws_instance.aws_vm.public_ip
}

output "gcp_vm_public_ip" {
  description = "Public IP of the GCP VM"
  value       = google_compute_instance.gcp_vm.network_interface.0.access_config.0.nat_ip
}
