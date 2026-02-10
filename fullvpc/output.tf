output "vpc_id"{
    value = aws_vpc.myvpc.id
}
output "pubsubnetids"{
    value = aws_subnet.pubsub[*].id
}
output "pvtsubnetsids"{
    value = aws_subnet.pvtsub[0].id
}
output "pubrouteid"{
    value = aws_subnet.pubroute[0].id
}
output "pvtrouteid"{
    value = aws_subnet.pvtroute[0].id
}
output "igwid"{
    value = aws_internet_gateway.mypubigw.id
}
output "natid"{
    value = aws_nat_gateway.mypvtngw.id
}
  

  


