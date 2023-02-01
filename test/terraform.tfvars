main_vpc_cidr = "10.10.0.0/24"
public_subnets = "10.10.1.128/26"
private_subnets = "10.10.2.192/26"
instance_type = "t2.micro"
ami = "ami-0b752bf1df193a6c4"
subnet_id = module.vpc.pvt_subnetid
key_name = data.aws_key_pair.demo_kp.key_name