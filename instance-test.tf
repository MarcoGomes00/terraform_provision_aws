module "nginx" {
    source = "./modules/aws_instance"
    name = "nginx"
    number_of_servers = 3
    domain = "domain.local"
    key_name = "EC2-First-Instance"
    subnet_ids = ["subnet-0fb679e67019e3497"]
    security_group_ids = ["sg-09e90bf3b908ff7c2", "sg-09e90bf3b908ff7c2"]
}

module "jumpbox"{
    source = "./modules/aws_instance"
    name = "jumpbox"
    number_of_servers = 1
    domain = "domain.local"
    key_name = "EC2-First-Instance"
    subnet_ids = ["subnet-0fb679e67019e3497"]
    security_group_ids = ["sg-09e90bf3b908ff7c2"]
}
