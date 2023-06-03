output "project_VPC_id" {
    description = "id of project vpc"
    value = aws_vpc.project_VPC.id
}
output "project_public_id" {
    description = "ID of public subnet"
    value = aws_subnet.project_public.id
}

output "project_private_id" {
    value = aws_subnet.project_private.id
}