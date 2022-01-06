terraform {
  required_version = ">= 1.0"
   backend "s3" {
  	region = "us-east-1"
  	key = "state/terraform.tfstate"
  	bucket = "shanu-dev-terraform"
  }
}

provider "aws" {
  region = ("${terraform.workspace}" == "dev" || "${terraform.workspace}" == "qa") ? "us-west-1" : "us-east-1"
}