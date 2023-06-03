variable "vpc_cidr_block" {
    description = "CIDR block of VPS"
}

variable "public_subnet_cidr_block"{
    description = "value"
}

variable "public_subnet_cidr_block" {
    description = "public ip of cidr block"
  
}

variable "public-subnet_count" {
    description = "number of public subnets to provision"
    type = number
    default = 2
  
}
variable "private-subnet_count" {
    description = "number of private subnets to provision"
    type = number
    default = 2
  
}

variable "aws_security_group" {
    description = "security group id to attach to instance"
    default = 1
}

variable "aws_key_pair"{
    description = "Key pair to assign to ec2"
}

variable "project_public_id" {
    description = "subnet id to host app-server instance"
  
}

variable "ami" {
    description = "ec2 ami"
  
}

variable "instance_type" {
    description = "instance type for ec2"
    default = "t2.micro"
    type = string
}

variable "aws_iam_role_arn" {
    description = "arn of fine grained iam_role"
}

variable "aws_iam_role"{
    description = "name of aws iam role"
}

variable "managed_policy_arn" {
    description = "iam policies managed by aws"
}

variable "aws_iam_policy" {
  description = "name of the policy"
}

variable "iam-role-policy-JSON" {
    description = "json from iam policy"
}

variable "assume_role_policy" {
    description = "role IAM role would inherit"
}