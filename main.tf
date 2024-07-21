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


# consuming a module
# -------------------
# module "web_app_2" {
#   source = "../web-app-module"

#   # Input Variables
#   bucket_prefix    = "web-app-2-data"
#   domain           = "anotherdevopsdeployed.com"
#   app_name         = "web-app-2"
#   environment_name = "production"
#   instance_type    = "t2.micro"
#   create_dns_zone  = true
#   db_name          = "webapp2db"
#   db_user          = "bar"
#   db_pass          = var.db_pass_2
# }

