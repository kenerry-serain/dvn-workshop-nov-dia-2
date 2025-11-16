terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "workshop-nov-remote-backend-bucket"
    key          = "networking/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    # dynamodb_table = "workshop-nov-state-locking-table"
  }
}

provider "aws" {
  region = var.assume_role.region

  assume_role {
    role_arn = var.assume_role.arn
  }

  default_tags {
    tags = var.tags
  }
}
