resource "aws_instance" "myec2Instant" {
  ami           = var.my_aim
  instance_type = var.instance_type
  tags = {
    "Name" = "myserver"
  }
  vpc_security_group_ids=[aws_security_group.allow_tls.id]
  }
  