resource "aws_subnet" "private_subnet" {
  count = var.total_ps
  vpc_id     = var.vpc_id
  cidr_block = "10.0.${count.index+3}.0/24"

  tags = {
    Name = "vijay-private-subnet-${count.index+1}"
  }
}