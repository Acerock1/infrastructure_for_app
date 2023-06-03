#routetable
resource "aws_route_table" "project_rt" {
    vpc_id = aws_vpc.project_VPC.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.projectvpc_igw.id
    }
  
  tags = {
    name = project_rt
  }
}

#point route-table to public subnet
resource "aws_route_table_association" "name" {
    subnet_id = aws_subnet.project_public.id
    route_table_id = aws_route_table.project_rt.id
  
}


#allows internet access to project.vpc
resource "aws_internet_gateway" "projectvpc_igw" {
    vpc_id = aws_vpc.project_VPC.id
    
    tags = {
        name = "Project_IGW"
    }
}

resource "aws_security_group" "project_security_group" {
  name        = "security_group1"
  description = "Allow ssh and http traffic"
  vpc_id      = aws_vpc.project_VPC.id

  ingress {
    description      = "ssh traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }
ingress {
    description      = "ssh traffic"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allow_ssh"
  }
}