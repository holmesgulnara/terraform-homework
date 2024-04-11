# terraform-homework

Homework 4 Documentation:
4 US regions have been added as tfvars files with different set of variables:

1. oregon.tfvars
region = "us-west-2"
ami_id = "ami-0395649fbe870727e"
type = "t2.micro"
availibility_zone = "us-west-2b"
key_name = "my-laptop-key"
instances_per_subnet = 1
ports = [ 443, 80, 22 ]

2. virginia.tfvars
region = "us-east-1"
ami_id = "ami-051f8a213df8bc089"
type = "t2.micro"
availibility_zone = "us-east-1d"
key_name = "my-laptop-key"
instances_per_subnet = 1
ports = [ 443, 80, 22 ]

3. ohio.tfvars
region = "us-east-2"
ami_id = "ami-0900fe555666598a2"
type = "t2.micro"
availibility_zone = "us-east-2c"
key_name = "my-laptop-key"
instances_per_subnet = 1
ports = [ 443, 80, 22 ]

4. california.tfvars
region = "us-west-1"
ami_id = "ami-0b990d3cfca306617"
type = "t2.micro"
availibility_zone = "us-west-1a"
key_name = "my-laptop-key"
instances_per_subnet = 1
ports = [ 443, 80, 22 ]
