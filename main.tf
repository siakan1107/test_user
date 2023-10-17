module "user" {
  source = "./module/User/"

}

module "group" {
  source = "./module/Group/"

}

module "permissionset" {
  source = "./module/Permissionset/"

}

module "provisioning" {
  source = "./module/Provisioning/"

}