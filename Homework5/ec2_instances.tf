resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  availability_zone = var.subnet_cidr[0].availability_zone
  subnet_id = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.sg_hw5_allow_tls.id]
  user_data = file("apache_ubuntu.sh")
  user_data_replace_on_change = true

}

resource "aws_instance" "amazon" {
  ami           = data.aws_ami.amzn.id
  instance_type = var.instance_type
  availability_zone = var.subnet_cidr[1].availability_zone
  subnet_id = aws_subnet.public2.id
  vpc_security_group_ids = [aws_security_group.sg_hw5_allow_tls.id]
  user_data = file("apache_amazon.sh")
  user_data_replace_on_change = true
}