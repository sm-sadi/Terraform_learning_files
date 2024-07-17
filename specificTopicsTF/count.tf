
# count is used to do it mutliple times 
# ----------------------------------------
resource "aws_instance" "testinging_count" {
  count = 2        ## it is execute this resource block twice 
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
}
