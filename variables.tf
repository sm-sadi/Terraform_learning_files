# Variable syntax 
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "The vaule that will be used"
}


// for sensitive information 
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
