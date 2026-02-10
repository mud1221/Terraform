resource "aws_vpc" "myvpc" {
    cidr_block = var.net_info.vpccidr
    tags = {
        Name = var.net_info.vpcname
    }  
}
resource "aws_subnet" "pubsub" {
    count =local.pubsubnet_count
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.net_info.pub_sub[0].pubsubnetcidr[count.index]
    availability_zone = var.net_info.pub_sub[0].pubsubnetazs[count.index]
    tags = {
      Name = var.net_info.pub_sub[0].pubsubnetnames[count.index]
    }  
}
resource "aws_subnet" "pvtsub" {
    count = local.pvtsubnet_count
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.net_info.pvt_sub[0].pvtsubnetcidr[count.index]
    availability_zone = var.net_info.pvt_sub[0].pvtsubnetazs[count.index]
    tags = {
        Name = var.net_info.pvt_sub[0].pvtsubnetnames[count.index]
    }
}
resource "aws_route_table" "pubroute" {
    vpc_id = aws_vpc.myvpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.mypubigw.id
    }
    tags = {
      Name = "mypubroute"
    }
   
}
resource "aws_route_table_association" "pubsub" {
    count = local.pubsubnet_count
    route_table_id = aws_route_table.pubroute.id
    subnet_id = aws_subnet.pubsub[*].id
}
resource "aws_internet_gateway" "mypubigw" {
    vpc_id = aws_vpc.myvpc.id
}
resource "aws_route_table" "pvtroute" {
    vpc_id = aws_vpc.myvpc.id
    route  {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.mypvtngw.id
    }  
    tags = {
      Name = "mypvtroute"
    }
}
resource "aws_route_table_association" "pvtsub" {
    count = local.pvtsubnet_count
    route_table_id = aws_route_table.pvtroute.id
    subnet_id = aws_subnet.pvtsub[*].id  
}
resource "aws_nat_gateway" "mypvtngw" {
    connectivity_type = "private"
    subnet_id = aws_subnet.pvtsub[*].id
  
}