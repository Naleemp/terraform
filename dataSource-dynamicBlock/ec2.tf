resource "aws_instance" "myec2Instant" {
  ami=data.aws_ami.amazonUbuntu2.id
  #instance_type =var.instance_type
  #instance_type =var.instance_type_list[0]
  instance_type =var.instance_type_map["qa"]
  count=2 # meta arguement modify the behavior of resource configuration
  key_name=var.key_pair
  tags = {
    //"Name" = "myserver"
    "Name"="Prod-${count.index}"
  }
  vpc_security_group_ids=[aws_security_group.allow_tls.id,aws_security_group.vpc-web.id]
  }

 /* output "ec2_instance_public" {
  description = "Ec2 public IP"
  value       = aws_instance.myec2Instant.public_ip
}*/