resource "aws_instance" "myec2Instant" {
  ami=data.aws_ami.amazonUbuntu2.id
  instance_type ="t2.micro"
  tags = {
    "Name" = "myserver"
  }  
  }

