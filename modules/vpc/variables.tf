variable "region" {
    type    = string
    #default = "us-east-1"
}
variable "main_vpc_cidr" {
    type    = string
    #default = "10.10.0.0/24"
}
variable "public_subnets" {
    type    = string
    #default = "10.10.1.0/26"
}
variable "private_subnets" {
    type    = string
    #default = "10.10.2.0/26"
}
