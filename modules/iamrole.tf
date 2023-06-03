resource "aws_iam_role" "iam_role" {
  name               = var.aws_iam_role
  assume_role_policy = data.aws_iam_policy.aws_iam_role

  inline_policy {
    name   = "jenkins-instance-policy"
    policy = data.aws_iam_policy.aws_iam_role
  }
}

data "aws_iam_policy" "aws_iam_role" {
  arn = var.aws_iam_role_arn
}