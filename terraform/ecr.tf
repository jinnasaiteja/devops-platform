resource "aws_ecr_repository" "app_repo" {
  name = "${var.project_name}-repo"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project_name}-repo"
  }
}

output "ecr_repo_url" {
  value = aws_ecr_repository.app_repo.repository_url
}