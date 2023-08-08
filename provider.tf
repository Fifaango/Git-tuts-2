terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

# provider "aws" {
#   access_key = "AKIA5MYDLG5VUBRQCVHS"
#   secret_key = "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"
#   region     = "us-east-2"
# }

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}