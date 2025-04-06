module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidr  = var.subnet_cidr
}

module "security_group" {
  source        = "./modules/security_group"
  vpc_id        = module.vpc.vpc_id
  allowed_ports = var.allowed_ports
}

module "key_pair" {
  source   = "./modules/key_pair"
  key_name = var.key_name
}

module "ec2" {
  source          = "./modules/ec2"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = module.vpc.subnet_id
  security_groups = [module.security_group.sg_id]
  key_name        = module.key_pair.key_name
  instance_name   = var.instance_name
}
