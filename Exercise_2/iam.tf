resource "aws_iam_role" "role_for_lambda" {
  name               = "role_for_lambda"
  assume_role_policy = file("iam/lambda-role-policy.json")
}

resource "aws_iam_role_policy_attachment" "lambda_basic_execution_policy_attachement" {
  role       = aws_iam_role.role_for_lambda.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}