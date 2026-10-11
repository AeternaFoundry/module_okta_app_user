resource "okta_app_user" "app_users" {
  for_each = var.app_users

  app_id            = each.value.app_id
  user_id           = each.value.user_id
  password          = each.value.password
  profile           = each.value.profile
  retain_assignment = each.value.retain_assignment
  username          = each.value.username
}

