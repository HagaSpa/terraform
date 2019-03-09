resource "aws_sfn_state_machine" "s3_check_workflow" {
  name     = "s3_check_workflow"
  role_arn = "${aws_iam_role.iam_for_sfn_execution_s3_check_workflow.arn}"

  definition = <<EOF
{
  "StartAt": "s3_check_lambda",
  "States": {
    "s3_check_lambda": {
      "Type": "Task",
      "Resource": "${aws_lambda_function.s3_check_lambda.arn}",
      "Next": "choice_status"
    },
    "choice_status": {
      "Type": "Choice",
      "Choices": [
        {
          "Variable": "$.status",
          "StringEquals": "ok",
          "Next": "post_success_lambda"
        },
        {
          "Variable": "$.status",
          "StringEquals": "ng",
          "Next": "post_error_lambda"
        }
      ]
    },
    "post_success_lambda": {
      "Type": "Task",
      "Resource": "${aws_lambda_function.post_success_lambda.arn}",
      "End": true
    },
    "post_error_lambda": {
      "Type": "Task",
      "Resource": "${aws_lambda_function.post_error_lambda.arn}",
      "End": true
    }
  }
}
EOF
}