resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    "domain" = "my-domain"
    "terraform" = "support"
    "creator" = "ch.jooon"
  }
}

resource "aws_subnet" "public" {
  cidr_block = var.public_subnet_cidr_block
  tags = {
    "domain" = "my-domain"
    "terraform" = "support"
    "creator" = "ch.jooon"
  }
}

resource "aws_subnet" "private" {
  cidr_block = var.private_subnet_cidr_block
  tags = {
    "domain" = "my-domain"
    "terraform" = "support"
    "creator" = "ch.jooon"
  }
}