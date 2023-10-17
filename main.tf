data "aws_ssoadmin_instances" "main" {}


module "user-kibeomkim" {
  source = "./module/User/KE/CDSO/kibeomkim"

}

