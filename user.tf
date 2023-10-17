data "aws_ssoadmin_instances" "user-kibeomkim" {}

locals {
  
  given_name = ["test","test1"]
  display_name = ["test","test1"]
  user_name = ["test","test1"]
  family_name =["test","test1"]
}

# Create SSO user1
resource "aws_identitystore_user" "user-kibeomkim3" {
    identity_store_id = tolist(data.aws_ssoadmin_instances.user-kibeomkim.identity_store_ids)[0] 

    user_name = [local.user_name]
    display_name = [local.display_name]
 name{
    given_name = [local.given_name]
    family_name = [local.family_name]
    }
 
 


}

