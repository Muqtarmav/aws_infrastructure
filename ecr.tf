resource "aws_ecr_repository" "private_repository" {
  name = "my-repo"
  
  image_tag_mutability = "MUTABLE"  # You can change this to IMMUTABLE if needed
  
  image_scanning_configuration {
    scan_on_push = true
  }
  
  encryption_configuration {
    encryption_type = "AES256"
  }
}
