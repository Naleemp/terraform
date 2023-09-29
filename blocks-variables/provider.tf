provider "aws" {
  region  = "us-east-1"
}
resource "aws_vpc" "ourFirstVPC" {
      cidr_block = "192.168.0.0/24"    
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}