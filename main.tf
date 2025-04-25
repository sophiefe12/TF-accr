# AWS EC2 Instance
resource "aws_instance" "aws_vm" {
  ami           = data.aws_ami.ubuntu 
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_web_traffic.name]


  user_data = templatefile("boot.sh", {
    client_id     = "testid",
    client_secret = "testid",
    org_id        = "testid",
    project_id    = "testid",
    app_name      = var.application_name,
    port          = var.port
  })

  tags = {
    Name = "AWS-VM"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

