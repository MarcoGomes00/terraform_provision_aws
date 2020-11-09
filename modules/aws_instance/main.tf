provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

resource "aws_instance" "instance" {
  count = var.number_of_servers
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = var.security_group_ids
  subnet_id = element(var.subnet_ids, count.index)

  root_block_device {
    volume_size           = var.disk_size
    volume_type           = "gp2"
    delete_on_termination = false
  }

  tags = {
    Name = "${var.name}-${count.index}.${var.domain}"
    Create_by = "terraform"
  }
}