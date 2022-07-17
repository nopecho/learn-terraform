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

resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    "domain" = "my-domain"
    "terraform" = "support"
    "creator" = "ch.jooon"
  }
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.public_subnet_cidr_block
  tags = {
    "domain" = "my-domain"
    "terraform" = "support"
    "creator" = "ch.jooon"
  }
}
