data "aws_ssoadmin_instances" "user-kibeomkim" {}

# Create SSO user1
resource "aws_identitystore_user" "user-kibeomkim1" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.user-kibeomkim.identity_store_ids)[0] 

  display_name = "test"
  user_name    = "test"

  name {
    given_name  = "test"
    family_name = "test"
  }

  emails {
    value = "testkkb@koreanair.com"  # Replace with your email ID
  }

}
  resource "aws_identitystore_user" "user-kibeomkim" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.user-kibeomkim.identity_store_ids)[0] 

  display_name = "test2"
  user_name    = "test2"

  name {
    given_name  = "test2"
    family_name = "test2"
  }

  emails {
    value = "testkkb2@koreanair.com"  # Replace with your email ID
  }
}

