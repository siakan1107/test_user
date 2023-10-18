module "user-testcdso" {
  source = "./KE/CDSO/"

  display_name = "testcdso"
  user_name    = "testcdso"
  given_name  = "testcdso"
  family_name = "testcdso"
  emails = "testcoso@testuser1.com"

}

module "user-testcdso2" {
  source = "./KE/CDSO/"

  display_name = "testcds2"
  user_name    = "testcdso2"
  given_name  = "testcdso2"
  family_name = "testcdso2"
  emails = "testcoso@testuser1.com"

}
