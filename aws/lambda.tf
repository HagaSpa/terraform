resource "aws_lambda_function" "s3_check_lambda" {
  filename      = "src/lambda_function_payload.zip"
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

resource "aws_lambda_function" "post_result_lambda" {
  filename      = "src/lambda_function_payload.zip"
  function_name = "post_result_lambda"
  role          = "${aws_iam_role.iam_for_lambda_execution.arn}"
  handler       = "lambda_function.lambda_function"
  runtime       = "python3.7"

}
