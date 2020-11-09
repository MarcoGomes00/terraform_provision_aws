variable "region" {
  default = "eu-west-3"
  type    = string
}

variable "name"{
  type = string
}

variable "number_of_servers" {
  type    = number
  default = 1
}

variable "instance_type"{
  type = string
  default = "t2.micro"
}

variable "instance_ami"{
  type = string
  default = "ami-0de12f76efe134f2f"
}

variable "disk_size" {
  type    = number
  default = 8
}

variable "security_group_ids" {
  type = list(string)
}

variable "subnet_ids" {
  type = list(string)
}

variable "key_name" {
  type = string
}

variable "domain"{
  type = string
}