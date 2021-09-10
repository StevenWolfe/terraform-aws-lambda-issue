terraform {
  required_version = "0.14.2"
  required_providers {
    aws = "~> 3.20"
  }
}

module "shared_lambda" {
  source =
}