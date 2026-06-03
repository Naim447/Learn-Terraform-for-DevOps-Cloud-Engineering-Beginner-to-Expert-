resource "aws_instance" "app1" {

  ami           = "ami-00c5d5e886a26d124"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.private1.id

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  user_data = file("userdata.sh")

  tags = {
    Name = "AppServer1"
  }
}