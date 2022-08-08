# indicate where the tfstate of this project is to be stored rather than locally
terraform {
  backend "s3" {
    # u can either use the key structure below or "dev/application-name/env/project-name/backend-state"
    bucket         = "dev-applications-backend-state-olufolarin"
    key            = "users-backend-dev-users"
    region         = "us-east-1"
    dynamodb_table = "dev_applications_locks"
    encrypt        = true
  }
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}