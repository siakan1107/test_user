module "user" {
  source = "./module/User/"

  display_name = "Kimtest"
  user_name    = "Kimtest"
  given_name  = "Kibeomkimtest"
  family_name = "Kim"
  emails = "testusekim@testuser1.com"

}