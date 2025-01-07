#created variable for vpc_cidr block 
variable "vpc_cidr" {
    default = "192.168.0.0/16"
    description = "This is the VPC cidr"
    type = string
}

#created variable for subnet CIDR 
variable "subnet_cidrs" {
    default = ["192.168.0.0/24","192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
    description = "These are subnet cidr ranges"
}

#created variable for Availability-zone
variable "subnet_azs" {
    default = ["us-east-1a", "us-east-1b", "us-east-1a", "us-east-1b"]
    description = "Availability Zones for the subnets"
}

#created variable subnet names
variable "subnet_names" {
    default = ["public-sub-1", "public-sub-2", "private-sub-1", "private-sub-2"]
    description = "Names of subnets"

}

