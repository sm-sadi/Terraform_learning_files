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

resource "aws_instance" "First-terraform" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"

  tags = {
    # using variable 
    Name = var.instance_name
  }
}


# using variable 
resource "aws_db_instance" "database" {
  allocated_storage = 1
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  username          = var.db_username
 password          = var.db_password

  db_subnet_group_name = aws_db_subnet_group.private.name

  skip_final_snapshot = true
}