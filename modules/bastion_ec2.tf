# data "aws_subnet_ids" "api_sub" {
#   vpc_id = aws_vpc.terraform_vpc.id
#   filter {
#     name   = "tag:Name"
#     values = ["pub_sub_a"]
#   }
# }

data "aws_security_group" "bastion_sg_data"{
  filter {
name = "tag:Name"
  values = ["bastion_sg"]
  }
  
}

data "aws_ami" "api_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
resource "aws_instance" "bastion" {
ami = data.aws_ami.api_ami.id
instance_type = var.instance_type
# subnet_id = data.aws_subnet_ids.api_sub.id
security_groups = [ "bastion_sg.id" ]
}
# resource "aws_network_interface_sg_attachment" "sg_attachment" {
#   security_group_id    = aws_security_group.bastion_sg.id
#   network_interface_id = aws_instance.bastion.primary_network_interface_id
# }