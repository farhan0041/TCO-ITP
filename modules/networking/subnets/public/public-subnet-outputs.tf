output "public-subnets" {
  value = "${aws_subnet.public_subnet[*].id}"
}