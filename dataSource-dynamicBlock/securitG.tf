resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
#inbound rules
  ingress { 
    description      = "TLS from VPC"
    from_port        = 443 
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
 #outbound rules
  egress { 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
   tags = {
      Name = "allow_tls"
  }
}

resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "Dev vpc web"
#inbound rules
 dynamic "ingress" { 
  iterator=port
	for_each=var.ingressrules
	content {
    from_port        = port.value 
    to_port          = port.value	
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
	}
  }
  
 #outbound rules
  dynamic "egress" { 
   iterator=port
   for_each=var.egressrules
   content{
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
	}
  }
   tags = {
      Name = "vpc-web"
  }
}