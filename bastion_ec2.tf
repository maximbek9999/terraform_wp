data "aws_ami" "api_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2*"]
  }
}
resource "aws_instance" "bastion" {
  ami                    = data.aws_ami.api_ami.id
  instance_type          = "t2.micro"
  key_name               = "laptop-pem"
  subnet_id              = aws_subnet.pub_sub_a.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  tags = {
    Name = "bastion_ec2"
  }
}
  provisioner "remote-exec" {
    inline = [
      "sudo ssh-keygen",
  "/home/ec2-user/.ssh/id_rsa",
  "passphrase",
  "passphrase"]
    connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ec2-user"
      private_key = file("./laptop-pem.pem") 
    }
  }