output "app_users_id" {
  description = "Map of id values across all app_users, keyed the same as var.app_users"
  value       = { for k, v in okta_app_user.app_users : k => v.id }
}
output "app_users_app_id" {
  description = "Map of app_id values across all app_users, keyed the same as var.app_users"
  value       = { for k, v in okta_app_user.app_users : k => v.app_id }
}
output "app_users_has_shared_username" {
  description = "Map of has_shared_username values across all app_users, keyed the same as var.app_users"
  value       = { for k, v in okta_app_user.app_users : k => v.has_shared_username }
}
output "app_users_password" {
  description = "Map of password values across all app_users, keyed the same as var.app_users"
  value       = { for k, v in okta_app_user.app_users : k => v.password }
  sensitive   = true
}
output "app_users_profile" {
  description = "Map of profile values across all app_users, keyed the same as var.app_users"
  value       = { for k, v in okta_app_user.app_users : k => v.profile }
}
output "app_users_retain_assignment" {
  description = "Map of retain_assignment values across all app_users, keyed the same as var.app_users"
  value       = { for k, v in okta_app_user.app_users : k => v.retain_assignment }
}
output "app_users_user_id" {
  description = "Map of user_id values across all app_users, keyed the same as var.app_users"
  value       = { for k, v in okta_app_user.app_users : k => v.user_id }
}
output "app_users_username" {
  description = "Map of username values across all app_users, keyed the same as var.app_users"
  value       = { for k, v in okta_app_user.app_users : k => v.username }
}

