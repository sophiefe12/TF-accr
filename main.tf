terraform {
  cloud {
    organization = "your-org-name"
    workspaces {
      name = "your-workspace-name"
    }
  }
}

# AWS EC2 Instance
resource "aws_instance" "aws_vm" {
  ami           = "ami-0c55b159cbfafe1f0"  # Ubuntu 20.04 in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformAWS"
  }
}

# GCP Compute Instance
resource "google_compute_instance" "gcp_vm" {
  name         = "terraform-gcp"
  machine_type = "e2-micro"
  zone         = "${var.gcp_region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}
