module "user-testcdso" {
  source = "./CDSO/"

  display_name = "testcdso"
  user_name    = "testcdso"
  given_name  = "testcdso"
  family_name = "testcdso"
  emails = "testcoso@testuser1.com"

}

module "user-testcdso2" {
  source = "./CDSO/"

  display_name = "testcdso2"
  user_name    = "testcdso2"
  given_name  = "testcdso2"
  family_name = "testcdso2"
  emails = "testcdso2@testuser1.com"

}