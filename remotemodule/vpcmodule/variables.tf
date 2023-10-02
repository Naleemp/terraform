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

variable "key_pair" {
default = "terraformKey"
description = "The  ec2 key pair"
type = string
}

variable "ingressrules"{
type=list(number)
default=[80,443,8080,22]
}

variable "egressrules"{
type=list(number)
default=[80,443,25,3306,53,8080]
}

variable "instance_type_list" {
  description = "Ec2 instant type"
  type = list(string)
  default = [ "t2.micro","t2.medium","t3.large" ]
}

variable "instance_type_map" {
  description = "Ec2 instant type"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa" = "t2.medium"
    "prod" = "t3.large"
  }
}

