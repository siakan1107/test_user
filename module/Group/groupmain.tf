module "grp-cdso-admin" {
  source = "./CDSO/"

  display_name = "GRP-CDSO-ADMIN"
  description = "This is GRP-CDSO-ADMIN GROUP"

}

module "grp-pss-pns-admin" {
  source = "./PSS/"

  display_name = "GRP-PSS-PNS-ADMIN"
  description = "This is GRP-PSS-PNS-ADMIN"

}