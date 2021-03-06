terraform {
  /*required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.10"
    }
  }
*/
  backend "s3"{
    region = "us-east-2"
    bucket = "epam-terraform-remote-state"
    dynamodb_table = "terraform-lock"
    key  = "mongodb/state.tfstate"
    encrypt = true
  }
}

provider "aws" {
  profile                 = "default"
  region                  = "us-east-2"
}