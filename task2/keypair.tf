# Generate SSH Key Pair
resource "tls_private_key" "bastion_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "bastion_key" {
  key_name   = "bastion-host-key"
  public_key = tls_private_key.bastion_key.public_key_openssh
}

# Save private key to local file
resource "local_file" "private_key" {
  content  = tls_private_key.bastion_key.private_key_pem
  filename = "bastion_host_key.pem"
  file_permission = "0400"
}
