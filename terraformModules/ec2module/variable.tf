variable "ec2Name" {
  type = string
}

variable "inst_type" {
    type = string
    default = "t2.micro"  
}
variable "region" {
  type = string
  default = "us-east-1"
}