module "dev_ec2_1" {
  source      = "../modules/compute"
  environment = module.dev_vpc_1.environment
  amis = {
    us-east-1 = "ami-0b6d9d3d33ba97d99"
    us-east-2 = "ami-0e5497a77ef21b5ac"
  }
  aws_region      = var.aws_region
  instance_type   = "t3.micro"
  key_name        = "delete-later"
  public_subnets  = module.dev_vpc_1.public_subnets
  private_subnets = module.dev_vpc_1.private_subnets
  sg_id           = module.dev_sg_1.sg_id
  vpc_name        = module.dev_vpc_1.vpc_name
}