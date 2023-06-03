resource "aws_iam_policy" "project_policy" {
  name        = var.aws_iam_policy
  description = "Policy to attach to AWS resource"

  policy = "${file(var.iam-role-policy-JSON)}"
}

resource "aws_iam_role" "project_role" {
  name = var.aws_iam_role

  assume_role_policy = "${file("var.assume-policy.json")}"
  
}