data "aws_ssoadmin_instances" "pss" {}
resource "aws_identitystore_user" "pss" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.pss.identity_store_ids)[0] 

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

resource "aws_identitystore_group_membership" "grp-pss-admin-membership1" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.pss.identity_store_ids)[0]
  #group_id          = "${aws_identitystore_group.grp-pss-admin.group_id}"
  group_id          = var.group_id
  member_id         = aws_identitystore_user.pss.user_id

}