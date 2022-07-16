provider "aws" {
  access_key = "${AWS_ACCESS_KEY_ID}"
  secret_key = "${AWS_SECRET_ACCESS_KEY}"
  region = "ap-northeast-2"
}

module "vpc" {
  source = "./vpc"
}

module "rds" {
  source = "./rds"
}