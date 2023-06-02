terraform {
  backend "s3" {
    bucket = "tf-state-4-dev"
    key = "***"
    region = "us-east-1"
    dynamodb_table = "terraform_state_lock"
  }
}
