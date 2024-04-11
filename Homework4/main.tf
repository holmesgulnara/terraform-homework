variable region {
    description = "Provide region"
    default = ""
    type = string
}

variable ami_id {
    description = "Provide ami id"
    default = ""
    type = string
}

variable type {
    description = "Provide instance type"
    default = ""
    type = string
}

variable availibility_zone {
    description = "Provide availibility zone"
    default = ""
    type = string
}

variable key_name {
    description = "Provide key name"
    default = ""
    type = string
}

variable "ports" {
  description = "available ports"
  type        = list(number)
}

variable "instances_per_subnet" {
  description = "Number of EC2 instances in each private subnet"
  type        = number
  default     = 1
}



resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = var.type
  availability_zone = var.availibility_zone
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name = var.key_name
  count = var.instances_per_subnet
}
