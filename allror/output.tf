output "vpcid" {
  value = aws_vpc.myvpc.id
}
output "subid" {
  value = aws_subnet.mysubnets[*].id
}