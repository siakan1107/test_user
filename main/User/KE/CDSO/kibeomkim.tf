module "create-user-kibeomkim" {
  source = "../../../../modules/User"
  display_name = "kibeomkim@koreanair.com"
  user_name    = "kibeom kim"
  given_name  = "Kibeomkim"
  family_name = "Kim"
  emails = "kibeomkim@koreanair.com"
}

module "attach-group-kibeomkim" {
  source = "../../../../modules/Membership"
  display_name = "kibeomkim@koreanair.com"
  group_name = "GRP-CDSO-ADMIN"
}