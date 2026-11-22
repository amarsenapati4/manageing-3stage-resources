output "my_ec2_ip" {
  value = aws_instance.modammd-instance.public_ip
}