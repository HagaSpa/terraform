resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role       = "${aws_iam_role.iam_for_lambda_s3_full_access.name}"
  policy_arn = "${aws_iam_policy.lambda_logging.arn}"
}

resource "aws_iam_role_policy_attachment" "lambda_s3_full_access" {
  role       = "${aws_iam_role.iam_for_lambda_s3_full_access.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
