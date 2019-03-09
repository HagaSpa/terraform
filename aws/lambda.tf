resource "aws_lambda_function" "s3_check_lambda" {
  filename      = "src/s3_check_lambda/lambda_function_payload.zip"
  function_name = "s3_check_lambda"
  role          = "${aws_iam_role.iam_for_lambda_s3_full_access.arn}"
  handler       = "lambda_function.lambda_function"
  runtime       = "python3.7"

  environment {
    variables = {
      bucket = "hagaspa-bucket-1"
    }
  }
}

resource "aws_lambda_function" "post_success_lambda" {
  filename      = "src/post_success_lambda/lambda_function_payload.zip"
  function_name = "post_success_lambda"
  role          = "${aws_iam_role.iam_for_lambda_execution.arn}"
  handler       = "lambda_function.lambda_function"
  runtime       = "python3.7"
}

resource "aws_lambda_function" "post_error_lambda" {
  filename      = "src/post_error_lambda/lambda_function_payload.zip"
  function_name = "post_error_lambda"
  role          = "${aws_iam_role.iam_for_lambda_execution.arn}"
  handler       = "lambda_function.lambda_function"
  runtime       = "python3.7"
}
