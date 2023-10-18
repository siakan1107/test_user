data "aws_ssoadmin_instances" "group" {}

########################### Groups #################################################
# Create Group
resource "aws_identitystore_group" "group_resource" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.group.identity_store_ids)[0]
  display_name      = var.display_name
  description       = var.description
}