variable "region" {
  default = "us-east-1"
  description = "The aws region"
  type = string
}

variable "my_aim" {
default = "ami-053b0d53c279acc90"
description = "The aws ami"
type = string
}

variable "instance_type" {
default = "t2.micro"
description = "The aws ec2 instance type"
type = string
}