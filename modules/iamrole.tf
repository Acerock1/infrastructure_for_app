resource "aws_iam_role" "iam_role" {
  name               = var.aws_iam_role
  assume_role_policy = data.aws_iam_policy.aws_iam_role

  managed_policy_arn = [
    var.managed_policy_arn
  ]
}

data "aws_iam_policy" "aws_iam_role" {
  arn = var.aws_iam_role_arn
}