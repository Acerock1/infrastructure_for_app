module "jenkins ec2" {
  iam_instance_profile = "${aws_iam_instance_profile.jenkins-profile}"
  tags = {
    name = "jenkins_ec2"
  }
}

resource "aws_iam_instance_profile" "jenkins-profile" {
  name = "jenkins-profile"
  role = aws_iam_role.role.name
}