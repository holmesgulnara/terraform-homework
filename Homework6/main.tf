provider "aws" {
  region = var.ec2_details[0].region
}

resource "aws_key_pair" "deployer" {
  key_name   = "hw6_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.ec2_details[0].ec2_type
  user_data = file("apache.sh")
  user_data_replace_on_change = true

  tags = {
    Name = var.ec2_details[0].name
  }
}