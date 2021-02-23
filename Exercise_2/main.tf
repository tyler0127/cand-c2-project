locals {
  output_path = "./output/greet_lambda.zip"
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = "greet_lambda.py"
  output_path = local.output_path
}

resource "aws_lambda_function" "lambda_greeting" {
  filename      = local.output_path
  function_name = var.lambda_function_name
  role          = aws_iam_role.role_for_lambda.arn
  handler       = "${var.lambda_function_name}.lambda_handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  source_code_hash = filebase64sha256(local.output_path)

  runtime = "python3.8"
}