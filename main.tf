# Configure Terraform to use HCP as the backend
terraform {
  cloud {
    organization = "HC_Sophie"  # Replace with your HCP organization name
    workspaces {
      name = "hcp-ACME"  # Replace with your HCP workspace name
    }
  }

  # Specify required providers and their versions
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"  # Use the appropriate AWS provider version
    }
  }

  # Specify the minimum Terraform version required
  required_version = ">= 1.2.0"
}

# Configure the AWS provider
provider "aws" {
  region = var.aws_region  # Ensure this variable is defined in variables.tf
}

# Call the AWS instance module
module "aws_instance" {
  source         = "./modules/aws_instance"  # Path to your AWS instance module
  ec2_ami        = var.aws_ami               # Pass the AMI variable to the module
  ec2_region     = var.aws_region            # Pass the region variable to the module
  instance_name  = var.aws_name              # Pass the instance name variable to the module
}
