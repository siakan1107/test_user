data "aws_ssoadmin_instances" "groups" {}

########################### Groups #################################################
# Create Group
resource "aws_identitystore_group" "grp-cdso-admin1" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.groups.identity_store_ids)[0]
  display_name      = var.display_name
  description       = var.description
}