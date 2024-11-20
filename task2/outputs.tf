# Outputs
output "bastion_public_ip" {
  description = "Public IP address of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "private_key_file" {
  description = "Path to the generated private key file"
  value       = local_file.private_key.filename
}