terraform {
  required_version = ">= 1.0.8, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.9.0"
    }
  }
  backend "s3" {
    bucket  = "waste-labs-terraform-backends"
    key     = "research_kedro_microservice/vpc.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
