# TODO: Define the variable for aws_region
provider "aws" {
  region = "us-east-1"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}