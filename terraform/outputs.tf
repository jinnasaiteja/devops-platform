output "ec2_public_ip" {
  value = aws_instance.app_server.public_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_1_id" {
  value = aws_subnet.public1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public2.id
}