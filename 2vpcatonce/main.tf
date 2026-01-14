resource "aws_vpc" "myvpc" {
  for_each = {
    "myvpc1" = "192.168.0.0/16"
    "myvpc2" = "192.169.0.0/16"
  }

  cidr_block = each.value
  tags = {
    Name = each.key
  }

}