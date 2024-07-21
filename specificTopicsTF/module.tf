## modules are containers for multipe resources that are used togather  

# local
module "web-app" {
  source = "../web-app"
}

# remote : 
module "vpc" {
  source = "git@github.com:terraform-aws-modules/terraform-aws-vpc.git" 
}