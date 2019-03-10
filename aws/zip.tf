data "archive_file" "s3_check_lambda" {
  type        = "zip"
  source_file = "src/s3_check_lambda/lambda_function.py"
  output_path = "src/s3_check_lambda/lambda_function_payload.zip"
}

data "archive_file" "post_success_lambda" {
  type        = "zip"
  source_file = "src/post_success_lambda/lambda_function.py"
  output_path = "src/post_success_lambda/lambda_function_payload.zip"
}

data "archive_file" "post_error_lambda" {
  type        = "zip"
  source_file = "src/post_error_lambda/lambda_function.py"
  output_path = "src/post_error_lambda/lambda_function_payload.zip"
}
