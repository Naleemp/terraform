module "ec2module" {
  source = "./ec2module"
  ec2Name = "Demo-ec2"
}
output "module_output" {
    value = module.ec2module.instance_id  
}