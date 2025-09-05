output "amplify_app_id" {
  description = "ID của Amplify App"
  value       = aws_amplify_app.frontend.id
}

output "amplify_app_arn" {
  description = "ARN của Amplify App"
  value       = aws_amplify_app.frontend.arn
}

output "default_domain" {
  description = "Domain mặc định của Amplify"
  value       = "https://${aws_amplify_branch.main.branch_name}.${aws_amplify_app.frontend.default_domain}"
}

output "custom_domain" {
  description = "Domain tùy chỉnh (nếu có)"
  value       = var.domain_name != "" ? "https://${var.domain_name}" : null
}

output "route53_zone_id" {
  description = "Route 53 Zone ID"
  value       = var.domain_name != "" ? aws_route53_zone.main[0].zone_id : null
}

output "route53_name_servers" {
  description = "Route 53 Name Servers"
  value       = var.domain_name != "" ? aws_route53_zone.main[0].name_servers : null
}