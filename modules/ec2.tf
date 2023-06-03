resource "aws_instance" "App-server" {
    ami = var.ami
    subnet_id = var.project_public_id
    instance_type = var.instance_type
    vpc_security_group_ids = var.aws_security_group
    key_name = var.aws
    
  
}