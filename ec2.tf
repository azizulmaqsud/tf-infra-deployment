resource "aws_instance" "nginx_server" {
  ami = "ami-0f5ee92e2d63afc18"

  instance_type = "t3.micro"
  key_name = aws_key_pair.july_24_vpc_key.key_name 

  subnet_id     = aws_subnet.public_subnet_1.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = "nginx-test-tf"
  }
}
