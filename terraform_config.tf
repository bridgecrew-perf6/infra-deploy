terraform {
  required_version = ">= 1.0"
  // backend "s3" {
  //	region = "us-east-1"
  //	key = "terraformmasterfile"
  //	bucket = "my-bucket/terraform/state/"
  //}
}

provider "aws" {
  region = ("${terraform.workspace}" == "dev" || "${terraform.workspace}" == "qa") ? "us-west-1" : "us-east-1"
}