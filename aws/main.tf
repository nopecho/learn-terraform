provider "aws" {
  access_key = "AKIARONM4WKQRSUQT3HW"
  secret_key = "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"
  region = "ap-northeast-2"
}

# module "vpc" {
#   source = "./vpc"
# }

module "rds" {
  source = "./rds"
}