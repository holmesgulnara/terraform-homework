resource "aws_security_group" "sg_hw5_allow_tls" {
  vpc_id = aws_vpc.kaizen.id
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

    ingress {
    description      = "TLS from VPC"
    from_port        = var.ports[0]
    to_port          = var.ports[0]
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    ingress {
    description      = "TLS from VPC"
    from_port        = var.ports[1]
    to_port          = var.ports[1]
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


}