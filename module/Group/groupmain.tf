module "grp-cdso-admin" {
  source = "./module/Group/CDSO/"

  display_name = "GRP-CDSO-ADMIN"
  description = "This is GRP-CDSO-ADMIN GROUP"

}

module "grp-pss-pns-admin" {
  source = "./module/Group/PSS/"

  display_name = "GRP-PSS-PNS-ADMIN"
  description = "This is GRP-PSS-PNS-ADMIN"

}