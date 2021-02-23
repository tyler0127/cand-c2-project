# TODO: Define the output variable for the lambda function.
output "lambda_function_arn" {
  value = aws_lambda_function.lambda_greeting.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.lambda_greeting.function_name
}

output "role_arn" {
  value = aws_iam_role.role_for_lambda.arn
}

output "role_name" {
  value = aws_iam_role.role_for_lambda.name
}
