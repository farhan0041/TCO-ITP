resource "aws_subnet" "public_subnet" {
  count = var.total_ps
  vpc_id     = var.vpc_id
  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    Name = "vijay-public-subnet-${count.index+1}"
  }
}