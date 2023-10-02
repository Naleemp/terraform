resource "aws_instance" "myec2" {
    ami=data.aws_ami.amazonUbuntu2.id
    instance_type=var.inst_type    
  tags = {
    Name=var.ec2Name 
  }
}