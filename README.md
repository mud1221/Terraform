resource "aws_vpc" "mydemovpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "myterraformvpc
    }
}