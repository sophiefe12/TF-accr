output "aws_instance_id" {
  value = aws_instance.aws_vm.id
}

output "aws_instance_public_ip" {
  value = aws_instance.aws_vm.public_ip
}

output "web_app_url" {
  value = "http://${aws_instance.aws_vm.public_ip}"
}