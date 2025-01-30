# AWS EC2 Instance
resource "aws_instance" "aws_vm" {
  ami           = "ami-000d95aa3e1de7cc7" # Amazon Linux AMI (Change as needed)
  instance_type = "t2.micro"

  tags = {
    Name = "AWS-VM"
  }
}

# GCP Compute Engine Instance
resource "google_compute_instance" "gcp_vm" {
  name         = "gcp-vm"
  machine_type = "f1-micro"
  zone         = "${var.gcp_region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // This block is required for external IP assignment
    }
  }
}
