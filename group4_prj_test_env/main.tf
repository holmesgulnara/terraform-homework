module "vpc" {
    source = "holmesgulnara/group4/aws"
    version = "0.0.5"
    region = "us-east-2"
    vpc_cidr = "10.0.0.0/16"
    subnet1_cidr = "10.0.1.0/24"
    subnet2_cidr = "10.0.2.0/24"
    subnet3_cidr = "10.0.3.0/24"
    ip_on_launch = true
    instance_type = "t2.micro"
    subnet1_name = "grp4-subnet1"
    subnet2_name = "grp4-subnet2"
    subnet3_name = "grp4-subnet3"
    key_name = "bastion-key"
    load_balancer_name = "grp4-app-lb"
    load_balancer_type = "application"
    lb_listener_port = 80
    lb_listener_protocol = "HTTP"
    lb_tg_ports = [80]
    lb_tg_protocol = ["HTTP"]
    IGW_name = "grp4-IGW"
    rt_name = "grp4-rt"
    blue_instance_name = "blue-instance"
    blue_lb_tg = "blue-tg-lb"
    sg_name = "group-4"
    sg_protocol = "tcp"
    green_instance_name = "green-instance"
    green_lb_tg = "green-tg-lb"

ports = [
  { from_port = 22, to_port = 22 },
  { from_port = 80, to_port = 80 },
  { from_port = 443, to_port = 443 }               
]

traffic_distribution = "blue-90"
enable_green_env = true
}