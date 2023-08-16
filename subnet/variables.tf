variable "vpc_id"{
    description = "ID of the vpc in where the subnets will be"
    type        = string
}

variable "pub_subnets"{
  description = "public subnets info"
  type        = list(object({
    subnets_cidr      = string
    availability_zone = string
  }))
}

variable "igw_id"{
    description = "ID of the IGW to be used in route table for public subnets"
    type = string
}

variable "priv_subnets"{
description = "private subnets"
  type = list(object({
    subnets_cidr = string
    availability_zone = string
  }))
}

variable "nat_id"{
    description = "NAT ID"
    type = string
}