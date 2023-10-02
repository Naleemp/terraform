module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"
  name = "vpc-trustbank"
  cidr = "10.0.0.0/16"

   azs             = ["us-east-1a", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  create_database_subnet_group = true
  create_database_subnet_route_table=true

  database_subnets    = ["10.0.21.0/24", "10.0.22.0/24"]


   enable_dns_hostnames = true
   enable_dns_support   = true
   
   public_subnet_tags={
    type="public_subnets"
   }
   private_subnet_tags={
    type="private_subnets"
   }
   database_subnet_tags = {
    type="database_subnets"
   }
  tags = {
    owner = "trustbank"
    Environment = "dev"
  }
  vpc_tags={
    Name="vpc-trusttank"
  }
}