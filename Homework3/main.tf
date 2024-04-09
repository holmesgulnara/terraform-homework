data "aws_ami" "amzn" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20240329.0-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Canonical
}

data "aws_availability_zones" "all" {}

resource "aws_instance" "app" {
  ami           = data.aws_ami.amzn.id
  instance_type = "t2.micro"
  availability_zone = element(data.aws_availability_zones.all.names, count.index)
  vpc_security_group_ids = [aws_security_group.sg_hw3_allow_tls.id]
  key_name = aws_key_pair.bastion_key.key_name
  count = 3
  user_data = file("apache.sh")
  user_data_replace_on_change = true

  tags = {
    Name = "app-${count.index + 1}"
  }
}

output ec2_1 {
  value = aws_instance.app
} 

output ec2_2 {
  value = aws_instance.app[*].public_ip
} 


