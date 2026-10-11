output "app_users_id" {
  description = "Map of id values across all app_users, keyed the same as var.app_users except keys with no id are omitted"
  value       = { for k, v in okta_app_user.app_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_users_app_id" {
  description = "Map of app_id values across all app_users, keyed the same as var.app_users except keys with no app_id are omitted"
  value       = { for k, v in okta_app_user.app_users : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "app_users_has_shared_username" {
  description = "Map of has_shared_username values across all app_users, keyed the same as var.app_users except keys with no has_shared_username are omitted"
  value       = { for k, v in okta_app_user.app_users : k => v.has_shared_username if v.has_shared_username != null }
}
output "app_users_password" {
  description = "Map of password values across all app_users, keyed the same as var.app_users except keys with no password are omitted"
  value       = { for k, v in okta_app_user.app_users : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "app_users_profile" {
  description = "Map of profile values across all app_users, keyed the same as var.app_users except keys with no profile are omitted"
  value       = { for k, v in okta_app_user.app_users : k => v.profile if v.profile != null && length(v.profile) > 0 }
}
output "app_users_retain_assignment" {
  description = "Map of retain_assignment values across all app_users, keyed the same as var.app_users except keys with no retain_assignment are omitted"
  value       = { for k, v in okta_app_user.app_users : k => v.retain_assignment if v.retain_assignment != null }
}
output "app_users_user_id" {
  description = "Map of user_id values across all app_users, keyed the same as var.app_users except keys with no user_id are omitted"
  value       = { for k, v in okta_app_user.app_users : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}
output "app_users_username" {
  description = "Map of username values across all app_users, keyed the same as var.app_users except keys with no username are omitted"
  value       = { for k, v in okta_app_user.app_users : k => v.username if v.username != null && length(v.username) > 0 }
}

