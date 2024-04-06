resource "aws_key_pair" "homework2" {
  key_name   = "Bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
