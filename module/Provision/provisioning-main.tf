module "pv-ps-grp-cdso-admin" {
  source = "./provision"

    permission_set_arn = module.ps-grp-cdso-admin.ps-grp-cdso-admin-arn
    principal_id = module.grp-cdso-admin.grp-cdso-admin-id

    principal_type = "GROUP"
    target_id = "472318675080"
    target_type = "AWS_ACCOUNT"
}