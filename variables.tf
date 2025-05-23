
variable "aws_region" {
  default = "us-east-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.4.0/24"
}

variable "allowed_ports" {
  type    = list(number)
  default = [22]
}

variable "ami_id" {
  description = "AMI ID para EC2"
  default = "ami-0c101f26f147fa7fd"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Par-de-llaver-test"
}

variable "instance_name" {
  default = "Mi-primer-EC2"
}
