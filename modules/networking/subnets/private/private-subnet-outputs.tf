output "private-subnets" {
  value = "${aws_subnet.private_subnet[*].id}"
}