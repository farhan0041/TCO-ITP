resource "aws_vpc" "vpc" {
  cidr_block       = var.cidr
  instance_tenancy = "dedicated"

  tags = {
    Name = var.tag_name
  }
}