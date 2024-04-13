variable region {
  type = string
  description = "Provide region"
}

variable vpc_settings {
type = list(object({
  vpc_cidr = string
  enable_dns_support = bool
  enable_dns_hostname = bool
  
}))
}

variable subnet_cidr {
  type = list(object({
    cidr = string
    subnet_name = string
    availability_zone = string
    map_public_ip_on_launch =bool
  }))
  
}

variable "ports" {
  description = "available ports"
  type        = list(number)
}

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

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

variable instance_type {
    type = string
}