terraform {
  required_version = "0.14.2"
  required_providers {
    aws = "~> 3.20"
  }
}

module "shared_lambda" {
  source = "git@github.com:StevenWolfe/terraform-aws-lambda-issue.git//terraform/modules/shared_module"
}
