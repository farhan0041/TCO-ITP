provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAUKV5HPCPDOZCOOGR"
  secret_key = "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"
}

module "vpc" {
  source = "./modules/networking/vpc"
  tag_name = "vijay1"
}

module "public-subnet" {

  source = "./modules/networking/subnets/public"
  vpc_id = module.vpc.vpc_id
  total_ps = var.total_ps
}

module "private-subnet" {

  source = "./modules/networking/subnets/private"
  vpc_id = module.vpc.vpc_id
  total_ps = var.total_ps
}

module "igw" {
  source = "./modules/networking/igw"
  vpc_id = module.vpc.vpc_id
  
}