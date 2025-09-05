variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Tên ứng dụng Amplify"
  type        = string
  default     = "frontend-app"
}

variable "repository_url" {
  description = "URL repository GitHub"
  type        = string
}

variable "branch_name" {
  description = "Tên branch để deploy"
  type        = string
  default     = "main"
}

variable "environment" {
  description = "Môi trường triển khai"
  type        = string
  default     = "production"
}

variable "project_name" {
  description = "Tên project"
  type        = string
  default     = "frontend-project"
}

variable "domain_name" {
  description = "Tên miền tùy chỉnh (tùy chọn)"
  type        = string
  default     = ""
}

variable "environment_variables" {
  description = "Biến môi trường cho ứng dụng"
  type        = map(string)
  default     = {}
}

variable "github_access_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}