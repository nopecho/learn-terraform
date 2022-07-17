variable "my_rds_engine" {
  type = string
  default = "postgres"
}

variable "my_rds_engine_version" {
  type = string
  default = "13.4"
}

variable "my_rds_instance" {
  type = string
  default = "t3.micro"
}

variable "my_rds_name" {
  type = string
}

variable "my_rds_username" {
  type = string
}

variable "my_rds_password" {
  type = string
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}