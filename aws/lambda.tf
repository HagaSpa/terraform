resource "aws_lambda_function" "s3_check_lambda" {
  filename         = "${data.archive_file.s3_check_lambda.output_path}"
  function_name    = "s3_check_lambda"
  role             = "${aws_iam_role.iam_for_lambda_s3_full_access.arn}"
  handler          = "lambda_function.lambda_function"
  source_code_hash = "${data.archive_file.s3_check_lambda.output_base64sha256}"
  runtime          = "python3.7"
  timeout          = 30

  environment {
    variables = {
      bucket = "hagaspa-bucket-1"
    }
  }
}

resource "aws_lambda_function" "post_success_lambda" {
  filename         = "${data.archive_file.post_success_lambda.output_path}"
  function_name    = "post_success_lambda"
  role             = "${aws_iam_role.iam_for_lambda_execution.arn}"
  handler          = "lambda_function.lambda_function"
  source_code_hash = "${data.archive_file.post_success_lambda.output_base64sha256}"
  runtime          = "python3.7"
}

resource "aws_lambda_function" "post_error_lambda" {
  filename         = "${data.archive_file.post_error_lambda.output_path}"
  function_name    = "post_error_lambda"
  role             = "${aws_iam_role.iam_for_lambda_execution.arn}"
  handler          = "lambda_function.lambda_function"
  source_code_hash = "${data.archive_file.post_error_lambda.output_base64sha256}"
  runtime          = "python3.7"
}
