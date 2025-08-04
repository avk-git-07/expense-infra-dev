terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }

    backend "s3" {
        bucket = "avk07-s3-remote-state"
        key = "avk-vpc-1"
        region = "us-east-1"
        dynamodb_table = "avk-dynamodb-table"
    }
}

provider "aws" {
    region = "us-east-1"
}

