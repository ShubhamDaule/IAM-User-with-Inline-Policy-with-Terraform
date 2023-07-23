terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# configured aws provider with proper credentials
provider "aws" {
  region    = "us-east-1"
  profile   = "shubham"
}