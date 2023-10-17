module "user-testcdso" {
  source = "./KE/CDSO/"

  display_name = "testcdso"
  user_name    = "testcdso"
  given_name  = "testcdso"
  family_name = "testcdso"
  emails = "testcoso@testuser1.com"

group_id = module.grp-cdso-admin.grp-cdso-admin-id


}

module "user-testcdso2" {
  source = "./KE/PSS/"

  display_name = "testcdso2"
  user_name    = "testcdso2"
  given_name  = "testcdso2"
  family_name = "testcdso2"
  emails = "testcdso2@testuser1.com"

group_id = module.grp-pss-pns-admin.grp-pss-pns-admin-id

}