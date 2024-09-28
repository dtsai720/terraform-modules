terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }

  required_version = "= 1.9.6"

  backend "s3" {
    dynamodb_table = "terraform-state-lock"
  }
}
