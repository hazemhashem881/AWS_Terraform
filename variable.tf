variable "cidr" {
  type = string
}


variable "public_subnet_1_cidr" {
  type = string
}

variable "public_subnet_2_cidr" {
  type = string
}




variable "private_subnet_1_cidr" {
  type = string
}


variable "private_subnet_2_cidr" {
  type = string
}

variable "availability_zone_a" {
  type = string
}
variable "availability_zone_b" {
  type = string
}


variable "ami" {
  type = string

}
variable "instance_type" {
  type = string
}

variable "ssh_key" {
  type = string
}