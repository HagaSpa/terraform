resource "aws_iam_role_policy_attachment" "lambda_logs_1" {
  role       = "${aws_iam_role.iam_for_lambda_s3_full_access.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_role_policy_attachment" "lambda_s3_full_access" {
  role       = "${aws_iam_role.iam_for_lambda_s3_full_access.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_role_policy_attachment" "lambda_logs_2" {
  role       = "${aws_iam_role.iam_for_lambda_execution.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}