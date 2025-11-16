resource "aws_ecr_repository" "my_app_repository" {
  name                 = "my-app-repo"
  image_tag_mutability = "MUTABLE" 
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = "Development"
    Project     = "MyApp"
  }
}
