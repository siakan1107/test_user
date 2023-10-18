data "aws_ssoadmin_instances" "membership" {}

data "aws_identitystore_group" "group" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.membership.identity_store_ids)[0]

  alternate_identifier {
    unique_attribute {
      attribute_path  = "DisplayName"
      attribute_value = var.group_name
    }
  }

  filter {
    attribute_path  = ""
    attribute_value = ""
  }
}

output "group_id" {
  value = data.aws_identitystore_group.group.group_id
}

data "aws_identitystore_user" "user" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.membership.identity_store_ids)[0]

  alternate_identifier {
    unique_attribute {
      attribute_path  = "UserName"
      attribute_value = var.display_name
    }
  }

  filter {
    attribute_path  = ""
    attribute_value = ""
  }
}

output "user_id" {
  value = data.aws_identitystore_user.user.user_id
}

####################### Group Membership ############################################
# Create Group Membership for the user
resource "aws_identitystore_group_membership" "grp-cdso-admin-membership" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.membership.identity_store_ids)[0]
  group_id          = data.aws_identitystore_group.group.group_id
  //group_id          = var.group_id
  member_id         = data.aws_identitystore_user.user.user_id
}