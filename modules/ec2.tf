resource "aws_instance" "app-server" {
    ami = var.ami
    subnet_id = var.project_public_id
    instance_type = var.instance_type
    vpc_security_group_ids = var.aws_security_group
    key_name = var.aws_key_pair
}

resource "aws_eip" "lb" {
  instance = aws_instance.app-server.id
  domain   = "vpc"
}