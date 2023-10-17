data "aws_ssoadmin_instances" "userkkb" {}
resource "aws_identitystore_user" "userkibeomkim" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.userkkb.identity_store_ids)[0] 

  display_name = "testuser"
  user_name    = "testuser"

  name {
    given_name  = "test"
    family_name = "user"
  }

  emails {
    value = "testuser@abc.com"  # 
  }
}
