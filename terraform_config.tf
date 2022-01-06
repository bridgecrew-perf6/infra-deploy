terraform {
  required_version = ">= 1.0"
   backend "s3" {
  	region = "us-east-1"
  	key = "state/terraform.tfstate"
  	bucket = "shanu-dev-terraform"
  }

    required_providers {
      archive = {
        source = "hashicorp/archive"
        version = "2.2.0"
      }
      aws = {
        source = "hashicorp/aws"
        version = "3.70.0"
      }
    }

}

provider "archive" {}

provider "aws" {
  region = ("${terraform.workspace}" == "dev" || "${terraform.workspace}" == "qa") ? "us-west-1" : "us-east-1"
}

