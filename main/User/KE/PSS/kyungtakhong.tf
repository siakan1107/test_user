module "create-user-kyungtakhong" {
  source = "../../../../modules/User"
  display_name = "kyungtakhong@koreanair.com"
  user_name    = "kyungtak Hong"
  given_name  = "kyungtak"
  family_name = "Hong"
  emails = "kyungtakhong@koreanair.com"
  group_name = "GRP-PSS-ADMIN"
}

module "attach-group-kyungtakhong" {
  source = "../../../../modules/Membership"
  display_name = "kyungtakhong@koreanair.com"
  group_name = "GRP-PSS-ADMIN"
}