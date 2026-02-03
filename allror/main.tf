resource "aws_vpc" "myvpc" {
  cidr_block = var.net_info.vpccidr
  tags = {
    Name = var.net_info.myterraform
  }
}
resource "aws_subnet" "mysubnets" {
  count             = length(var.net_info.sub_info[0].subazs)
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.net_info.sub_info[0].subcidrs[count.index]
  availability_zone = var.net_info.sub_info[0].subazs[count.index]
  tags = {
    Name = var.net_info.sub_info[0].subnames[count.index]
  }

}