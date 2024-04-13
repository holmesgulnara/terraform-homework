resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.ec2_details[0].ec2_type
  availability_zone = var.subnet_cidr[0].availability_zone
  subnet_id = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.sg_hw5_allow_tls.id]
  user_data = file("apache_ubuntu.sh")
  user_data_replace_on_change = true

  tags = {
    Name = var.ec2_details[0].name_ubuntu
  }

}

resource "aws_instance" "amazon" {
  ami           = data.aws_ami.amzn.id
  instance_type = var.ec2_details[0].ec2_type
  availability_zone = var.subnet_cidr[1].availability_zone
  subnet_id = aws_subnet.subnet2.id
  vpc_security_group_ids = [aws_security_group.sg_hw5_allow_tls.id]
  user_data = file("apache_amazon.sh")
  user_data_replace_on_change = true

  tags = {
    Name = var.ec2_details[0].name_amazon
  }
}