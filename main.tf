terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_amplify_app" "frontend" {
  name         = var.app_name
  repository   = var.repository_url
  access_token = var.github_access_token

  build_spec = <<-EOT
    version: 1
    frontend:
      phases:
        preBuild:
          commands:
            - npm ci
        build:
          commands:
            - npm run build
      artifacts:
        baseDirectory: dist
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
  EOT

  environment_variables = var.environment_variables

  enable_branch_auto_build = true
  enable_auto_branch_creation = false

  custom_rule {
    source = "/<*>"
    status = "404-200"
    target = "/index.html"
  }

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.frontend.id
  branch_name = var.branch_name

  framework = "React"
  stage     = "PRODUCTION"

  enable_auto_build = true
}

resource "aws_amplify_domain_association" "frontend" {
  count       = var.domain_name != "" ? 1 : 0
  app_id      = aws_amplify_app.frontend.id
  domain_name = var.domain_name

  enable_auto_sub_domain = true

  sub_domain {
    branch_name = aws_amplify_branch.main.branch_name
    prefix      = ""
  }

  wait_for_verification = false
}



