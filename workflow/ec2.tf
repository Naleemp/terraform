provider "aws" {
  region="us-east-1"
 # profile ="default"
}
resource "aws_instance" "myec2" {
  ami ="ami-026ebd4cfe2c043b2"
  instance_type = "t2.micro"
  tags={
    "Name"="myec2"
  }
}