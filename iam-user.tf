#-------------------provider------------------#
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "ap-south-1"
}



## iam user ##
resource "aws_iam_user" "lb" {
  name = var.name

  tags = {
    that = "reshma"
    rock = "star"
  }
}

