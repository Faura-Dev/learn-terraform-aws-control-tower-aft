terraform {
  backend "s3" {
    bucket         = "faura-aft-tfstate"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "faura-aft-tfstate-locking"
    encrypt        = true
  }
}

provider "aws" {
  region                   = "us-east-1"
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile                  = "default"
}

