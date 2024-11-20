# Bastion Host EC2 Instance
resource "aws_instance" "bastion" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = aws_key_pair.bastion_key.key_name
  vpc_security_group_ids = [aws_security_group.bastion.id]

  tags = {
    Name = "bastion-host"
  }
}