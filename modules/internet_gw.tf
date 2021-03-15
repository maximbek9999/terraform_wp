resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.terraform_vpc.id

  tags = {
    Name = "internet_gw"
  }
}
