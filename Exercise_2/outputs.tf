# TODO: Define the output variable for the lambda function.
output "lambda_output" {
  description = "Lambda Function ID"
  value = aws_lambda_function.UdacityLambda.id
}