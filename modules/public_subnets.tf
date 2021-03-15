resource "aws_subnet" "public_subnet_a" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  
  tags = {
    Name = "public_subnet_a"
  }
 }

 resource "aws_subnet" "public_subnet_b" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.2.0/24"
  
  tags = {
    Name = "public_subnet_b"
  }
 }

 resource "aws_subnet" "public_subnet_c" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.3.0/24"
  
  tags = {
    Name = "public_subnet_c"
  }
 }
 
 output "public_subnet_a_id" {
   value = aws_subnet.public_subnet_a.id
}

output "public_subnet_b_id" {
   value = aws_subnet.public_subnet_b.id
}

output "public_subnet_c_id" {
   value = aws_subnet.public_subnet_c.id
}

# resource "aws_subnet" "public_subnets" {
#   vpc_id     = aws_vpc.terraform_vpc.id
#   count = 3
#   cidr_block = var.cidr_blocks[count.index]
  
#   tags = {
#     Name = var.public_subnets[count.index]
#   }
#  }

# variable "public_subnets"{
#    type = list
#    default = ["public_subnet_a", "public_subnet_b", "public_subnet_c"] 
# }

# variable "cidr_blocks"{
#    type = list
#    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] 
# }
 