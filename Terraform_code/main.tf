resource "github_repository" "mtc_repo" {
  name        = "mtc-repo"
  description = "Code for MTC"
  visibility  = "private"
  auto_init   = true
}

resource "github_repository_file" "readme" {
  repository = github_repository.mtc_repo.name
  branch = "main"
  file = "README.md"
  content = "#This repository for infra developers"
  overwrite_on_create = true
}

resource "github_repository_file" "index" {
  repository = github_repository.mtc_repo.name
  branch = "main"
  file = "index.html"
  content = "Hello Terraform!"
  overwrite_on_create = true
}


