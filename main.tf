# AWS Provider Configuration
provider "aws" {
  region = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

# AWS EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

# GCP Provider Configuration
provider "google" {
  project = var.GCP_PROJECT_ID
  region  = var.GCP_REGION
  credentials = var.GOOGLE_CREDENTIALS
}

# GCP Compute Instance
resource "google_compute_instance" "example" {
  name         = "example-instance"
  machine_type = "e2-micro"
  zone         = "${var.GCP_REGION}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10" # Replace with a valid image for your project
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
