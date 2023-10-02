data "aws_ami" "amazonUbuntu2" {
  most_recent= true        
  owners= ["amazon"] 
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-*"]
    
   }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  } 
  
}