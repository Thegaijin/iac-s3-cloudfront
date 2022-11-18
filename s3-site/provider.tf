terraform {
  # required_version = "~> 0.14"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "umf-dashboard-terraform"
    key = "prod/terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  alias = "acm_provider"
  region = "us-east-1"
}
