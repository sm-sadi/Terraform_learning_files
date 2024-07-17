# Variable defining syntax 
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "The vaule that will be used"
}


#  for sensitive information 
variable "db_username" {
  description = "Database administrator username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}


# using variables 
resource "aws_db_instance" "database" {
  allocated_storage = 1
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  username          = var.db_username #example 
 password          = var.db_password 

  db_subnet_group_name = aws_db_subnet_group.private.name
  skip_final_snapshot = true
}