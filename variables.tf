variable "app_users" {
  description = <<EOT
Map of app_users, attributes below
Required:
    - app_id
    - user_id
Optional:
    - password
    - profile
    - retain_assignment
    - username
EOT

  type = map(object({
    app_id            = string
    user_id           = string
    password          = optional(string)
    profile           = optional(string)
    retain_assignment = optional(bool)
    username          = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

