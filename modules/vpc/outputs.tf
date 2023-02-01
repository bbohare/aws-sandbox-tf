output "pub_subnetid" {
    value = aws_subnet.publicsubnets.id
  
}

output "pvt_subnetid" {
    value = aws_subnet.privatesubnets.id
  
}

output "vpc_id" {
    value = aws_vpc.Main.id
  
}