resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
    associate_public_ip_address = true
    subnet_id = "subnet-0ec5c0f3711e3a49d"
    vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "netflix-we-server"
  }
}