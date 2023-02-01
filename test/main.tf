module "vpc" {
    source = "../modules/vpc"
    region = "eu-west-1"
    main_vpc_cidr = var.main_vpc_cidr
    public_subnets = var.public_subnets
    private_subnets = var.private_subnets
  
}

module "ec2" {
    source = "../modules/ec2"
    vpcid  = module.vpc.vpc_id
    instance_type = var.instance_type
    ami = var.ami
    subnet_id = var.subnet_id
    key_name = var.key_name
    
}