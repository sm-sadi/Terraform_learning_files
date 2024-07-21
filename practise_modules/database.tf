resource "aws_db_instance" "database" {
  allocated_storage = 1
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  username          = "username"
 password          = "password"
   skip_final_snapshot = true
}