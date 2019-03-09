resource "aws_iam_policy" "lambda_invoke_s3_check_workflow_policy" {
  name        = "lambda_invoke_s3_check_workflow_policy"
  path        = "/"
  description = "s3_check_worklow invoke policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Resource": [
        "${aws_lambda_function.s3_check_lambda.arn}",
        "${aws_lambda_function.post_success_lambda.arn}",
        "${aws_lambda_function.post_error_lambda.arn}"
      ]
    }
  ]
}
EOF
}