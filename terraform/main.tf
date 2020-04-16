provider "aws" {
    region = "us-east-1"
    version = "~> 2.0"
}

terraform {
    backend "s3" {
        encrypt = true
        dynamodb_table = "terraform-state-lock"
        bucket = "kajool-terraform-state"
        key = "test"
        region = "us-east-1"
    }
}