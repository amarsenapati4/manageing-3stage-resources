
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.71.0"
    }
  }

   backend "s3" {
    bucket = "modammd-terraform-state-dev-ap-southeast-2"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
  region = "ap-southeast-2"
}