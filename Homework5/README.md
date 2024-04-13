parameters that I have passed as part of Homework5 task are:
region = "us-west-2"
vpc_settings = [ 
    {
    vpc_cidr = "192.168.0.0/16", 
    enable_dns_support = true, 
    enable_dns_hostname = true
    } 
    ]

subnet_cidr = [
    { cidr = "192.168.1.0/24", subnet_name = "public1", availability_zone = "us-west-2a", map_public_ip_on_launch = true }, 
    { cidr = "192.168.2.0/24", subnet_name = "public2", availability_zone = "us-west-2b", map_public_ip_on_launch = true },
    { cidr = "192.168.101.0/24", subnet_name = "private1", availability_zone = "us-west-2c", map_public_ip_on_launch = false },
    { cidr = "192.168.102.0/24", subnet_name = "private2", availability_zone = "us-west-2d", map_public_ip_on_launch = false }
    ]

ports = [ 22, 80 ]

instance_type = "t2.micro"