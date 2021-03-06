variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  type = string
  default = "10.0.1.0/24"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}