terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}


# block Name = "provider_TypeOfResource" "will be name"
resource "aws_instance" "First-terraform" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"

  tags = {
    # using variable 
    Name = var.instance_name
  }
}


