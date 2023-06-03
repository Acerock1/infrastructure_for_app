
#vpc to host infrastructure
resource "aws_vpc" "project_VPC" {
    cidr_block = var.vpc_cidr_block
    enable_dns_hostnames = true

    tags = {
        name = "project.vpc"
        environment =  "dev"
    }
}


#create a subnet in project.vpc
resource "aws_subnet" "project_public" {
    count = var.project_public
    vpc_id = aws_vpc.project_VPC.id
    cidr_block = var.public_subnet_cidr_block
    availability_zone = "us-east-1c"
    map_public_ip_on_launch = "true"

    tags = {
      name = "project_public"
    }
}

#create subnet to host private infrastructure {second%third tier}
resource "aws_subnet" "project_private" {
    count = var.private-subnet_count
    vpc_id = aws_vpc.project_VPC.id
    cidr_block = var.private_subnet_cidr_block
    availability_zone = "us-east-1c"

    tags = {
        name = "project_private"
    }  
}