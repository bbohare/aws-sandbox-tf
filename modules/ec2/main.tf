
resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "assigining to ec2"
  vpc_id      = var.vpcid

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2_sg"
  }
}

resource "aws_network_interface" "netw_interface" {
    subnet_id = var.subnet_id
    security_groups = [aws_security_group.ec2_sg.id]
  
}

resource "aws_instance" "first" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  network_interface {
    network_interface_id = aws_network_interface.netw_interface.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

}