module "user" {
  source = "./module/User/main.tf"

  display_name = "Kimtest"
  user_name    = "Kimtest"
  given_name  = "Kibeomkimtest"
  family_name = "Kim"
  emails = "testusekim@testuser1.com"

  group_id = data.grp-cdso-admin.grp-cdso-admin-id
}