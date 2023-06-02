terraform {
  backend "s3" {
    bucket = "backend_for_afo"
    key = "***"
    region = "us-east-1"
    dynamodb_table = "terraform_state_lock"
  }
}
