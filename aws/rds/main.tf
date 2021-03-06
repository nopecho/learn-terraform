terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "ap-northeast-2"
}

resource "aws_db_instance" "my-rds" {
  allocated_storage    = 50
  engine               = var.my_rds_engine
  engine_version       = var.my_rds_engine_version
  instance_class       = var.my_rds_instance
  name                 = var.my_rds_name
  username             = var.my_rds_username
  password             = var.my_rds_password
  parameter_group_name = "default.postgress.13"
  skip_final_snapshot  = true
}