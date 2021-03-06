provider "aws" {
    region  = var.AWS_REGION
    profile = "adam@echo9"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket  = "tf-state-echo9"
    key     = "state"
    profile = "adam@echo9"
    region  = "us-east-1"
  }
}
