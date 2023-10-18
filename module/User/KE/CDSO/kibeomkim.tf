data "aws_ssoadmin_instances" "kibeomkim" {}
resource "aws_identitystore_user" "kibeomkim" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.cdso.identity_store_ids)[0] 

  display_name = var.display_name
  user_name    = var.user_name

  name {
    given_name  = var.given_name
    family_name = var.family_name
  }

  emails {
    value = var.emails  # 
  }
}

#resource "aws_identitystore_group_membership" "grp-cdso-admin-membership1" {
#  identity_store_id = tolist(data.aws_ssoadmin_instances.cdso.identity_store_ids)[0]
  ##group_id          = "${aws_identitystore_group.grp-cdso-admin.group_id}"
#  group_id          = var.group_id
#  member_id         = aws_identitystore_user.cdso.user_id

#}