provider "aws" {
  access_key = "removed for security reasons"
  secret_key = "removed for security reasons"
  region = var.aws_region
}

resource "aws_lambda_function" "UdacityLambda" {
  function_name = "greet_lambda"
  handler = "greet_lambda.lambda_handler"
  role = "arn:aws:iam::<redacted for security reasons>:role/lambda_role_test"
  runtime = "python3.8"
  filename = "greet_lambda.py.zip"
} 