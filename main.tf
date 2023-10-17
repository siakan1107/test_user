module "user" {
  source = "./module/User/KE"

}

module "group" {
  source = "./module/Group"

}

module "permissionset" {
  source = "./module/Permissionset"

}

module "provisioning" {
  source = "./module/Provision"

}