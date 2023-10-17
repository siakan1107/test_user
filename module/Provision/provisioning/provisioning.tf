data "aws_ssoadmin_instances" "provisioning" {}

 resource "aws_ssoadmin_account_assignment" "assignaccount" {
  instance_arn = tolist(data.aws_ssoadmin_instances.provisioning.arns)[0]


  permission_set_arn = var.permission_set_arn
  principal_id  = var.principal_id
  principal_type = var.principal_type
  target_id = var.target_id
  target_type = var.target_type
 }