resource "aws_subnet" "private_subnet_a" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.11.0/24"
  
  tags = {
    Name = "private_subnet_a"
  }
 }

 resource "aws_subnet" "private_subnet_b" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.12.0/24"
  
  tags = {
    Name = "private_subnet_b"
  }
 }

 resource "aws_subnet" "private_subnet_c" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.13.0/24"
  
  tags = {
    Name = "private_subnet_c"
  }
 }
 
 output "private_subnet_a_id" {
   value = aws_subnet.public_subnet_a.id
}

output "private_subnet_b_id" {
   value = aws_subnet.public_subnet_b.id
}

output "private_subnet_c_id" {
   value = aws_subnet.public_subnet_c.id
}
