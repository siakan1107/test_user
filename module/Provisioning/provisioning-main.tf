module "pv-ps-grp-cdso-admin" {
  source = "./provisioning"

    permission_set_arn = module.ps-grp-cdso-admin.ps-grp-cdso-admin-arn
    principal_id = module.grp-cdso-admin1.grp-cdso-admin-id
    principal_type = "GROUP"
    target_id = "472318675080"
    target_type = "AWS_ACCOUNT"
}
module "pv-ps-grp-pss-pns-admin" {
  source = "./provisioning/"

    permission_set_arn = module.ps-grp-pss-pns-admin.ps-grp-pss-pns-admin-arn
    principal_id = module.grp-pss-pns-admin1.grp-pss-pns-admin-id
    principal_type = "GROUP"
    target_id = "472318675080"
    target_type = "AWS_ACCOUNT"
}