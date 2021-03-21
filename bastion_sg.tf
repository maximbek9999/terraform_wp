
resource "aws_security_group" "bastion_sg" {
  name   = "bastion_sg"
  vpc_id = aws_vpc.wp_vpc.id
  tags = {
    Name = "bastion_sg"
  }
  ingress {
    description = "TLS from myip"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ip]

  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

output "bastion_sg" {
  value = aws_security_group.bastion_sg.id
}