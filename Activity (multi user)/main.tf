resource "aws_instance" "node1" {
  ami                         = "ami-0522ab6e1ddcc7055"
  instance_type               = "t2.micro"
  key_name                    = "mannu"
  associate_public_ip_address = true
  subnet_id = "subnet-0d72a20dc5408a975"
  tags = {
    Name = "node12345"
  }
}