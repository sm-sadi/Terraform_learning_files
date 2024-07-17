resource "aws_instance" "First-terraform" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
  
# A set of meta arguments to control terrafrom behavior for specific resource 
  lifecycle {
    create_before_destroy = true
    ignore_changes = [ 
      tags

     ]
     prevent_destroy = false #reject any plan that destory this ...

  }
}
