terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "mendybucket"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-lock"
    region = "us-east-1"
    encrypt= true
  }
}

resource "aws_dynamodb_table" "tf_lock" {
  name= "terraform-lock"
  read_capacity  = 3
  write_capacity = 3
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  /*lifecycle {
    prevent_destroy = true
  }*/
  tags = {
    Name        = "dynamodb-table-1"
    Environment = "production"
  }
}

provider "aws" {
  region = "us-east-1"
}