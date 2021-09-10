terraform {
  required_version = "0.14.2"
  required_providers {
    aws = "~> 3.20"
  }
}

module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"
  version = "v2.16.0"

  create_role = true

  function_name = "Hello"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.7"

  publish = true

  source_path = "${path.module}/../../../src/"
}