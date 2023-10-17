module "grp-cdso-admin" {
  source = "./CDSO/"

  display_name = "GRP-CDSO-ADMIN1"
  description = "This is GRP-CDSO-ADMIN1 GROUP"

}

module "grp-pss-pns-admin" {
  source = "./PSS/"

  display_name = "GRP-PSS-PNS-ADMIN1"
  description = "This is GRP-PSS-PNS-ADMIN1"

}