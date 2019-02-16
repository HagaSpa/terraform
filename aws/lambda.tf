resource "aws_lambda_function" "s3_full_access_lambda" {
  filename      = "src/lambda_function_payload.zip"
  function_name = "s3_full_access_lambda"
  role          = "${aws_iam_role.iam_for_lambda_s3_full_access.arn}"
  handler       = "lambda_function.lambda_function"
  runtime       = "python3.7"

  environment {
    variables = {
      foo = "bar"
    }
  }
}
