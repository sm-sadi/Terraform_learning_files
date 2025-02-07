# depends_on --Complete one task before string this 
# -----------------------------------
# depends_on = [ NameOfThe_resource]
# if there is a resource that repends on another resoure to comple before executiing 


resource "aws_iam_role_policy" "test_policy" {
  name = "test_policy"
  role = aws_iam_role.test_role.id
  policy = jsonencode({
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect   = "Allow"
      },
    ]
  })
}

resource "aws_instance" "First-terraform" {
  count = 2
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
 depends_on = [ aws_iam_role_policy]   ## example here 
}
