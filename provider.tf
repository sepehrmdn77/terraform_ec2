terraform {

  # backend "s3" {
  #   bucket = "mbucket_name"
  #   key    = "path/to/my/key"
  #   region = "bucket-region"
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2" # Your region
  #   access_key = "my-access-key" # This method is hard code and not safe and we have to use export
  #   secret_key = "my-secret-key" # This method is hard code and not safe and we have to use export
}