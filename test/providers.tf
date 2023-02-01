terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
      #region = "eu-west-1"
    }
  }
}

provider "aws" {
  # Configuration options
}
