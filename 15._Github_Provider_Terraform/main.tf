provider "github" {
  owner = var.github_org
  token = var.github_token
}

resource "github_repository" "repo" {
  name               = "terraform_provisioned_repo"
  description        = "Provisioned via Terraform"
  visibility         = "public"
  has_issues         = true
  has_projects       = true
  has_wiki           = true
  auto_init          = false
  license_template   = "mit"
  gitignore_template = "Python"
  archive_on_destroy = true
}

resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = "main"
}

resource "github_repository_file" "readme" {
  repository          = github_repository.repo.name
  file                = "README.md"
  content             = "# Terraform Provisioned Repo \n\nThis repository was provisioned using Terraform."
  commit_message      = "Initial commit"
  overwrite_on_create = true
  branch              = "main"
}

resource "github_repository_file" "github_dir_placeholder" {
  repository          = github_repository.repo.name
  file                = ".github/.keep"
  content             = "This has been provisioned by Terraform"
  commit_message      = "Create .github directory"
  overwrite_on_create = true
  depends_on          = [github_repository_file.readme]
  branch              = "main"
}


resource "github_branch_protection" "main" {
  repository_id = github_repository.repo.node_id
  pattern       = "main"

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = false
    require_code_owner_reviews      = false
  }

  enforce_admins = false
}

resource "github_team" "example_team" {
  name        = "core-devs"
  description = "Core developers team"
  privacy     = "closed"
}

resource "github_team_membership" "members" {
  for_each = toset(var.team_members)
  team_id  = github_team.example_team.id
  username = each.value
  role     = "maintainer"

  depends_on = [github_team.example_team]
}