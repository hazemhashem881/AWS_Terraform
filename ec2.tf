#------create aws ec2 ---

resource "aws_instance" "bastion" {
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id = module.network.public_subnet_id_1
  key_name = var.ssh_key
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name ="bastion"
  }
}
