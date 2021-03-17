resource "aws_subnet" "pub_sub_a" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  
  tags = {
    Name = "pub_sub_a"
  }
 }

 resource "aws_subnet" "pub_sub_b" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.2.0/24"
  
  tags = {
    Name = "pub_sub_b"
  }
 }

 resource "aws_subnet" "pub_sub_c" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.3.0/24"
  
  tags = {
    Name = "pub_sub_c"
  }
 }
 
 output "pub_sub_a_id" {
   value = "aws_subnet.pub_sub_a.id"
}

output "pub_sub_b_id" {
   value = aws_subnet.pub_sub_b.id
}

output "pub_sub_c_id" {
   value = aws_subnet.pub_sub_c.id
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
 