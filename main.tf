# AWS EC2 Instance
resource "aws_instance" "aws_vm" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux AMI (Change as needed)
  instance_type = var.instance_type

  tags = {
    Name = "AWS-VM"
  }
}

