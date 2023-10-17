data "aws_ssoadmin_instances" "ps-grp-pss-pns-admin" {}

resource "aws_ssoadmin_permission_set" "ps-grp-pss-pns-admin-managed" {
  name         = "ps-grp-pss-pns-admin-managed"
  instance_arn = tolist(data.aws_ssoadmin_instances.ps-grp-pss-pns-admin.arns)[0]
}

resource "aws_ssoadmin_managed_policy_attachment" "ec2_admin_managed_policy_attachment" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.ps-grp-pss-pns-admin.arns)[0]
  managed_policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  permission_set_arn = aws_ssoadmin_permission_set.ps-grp-pss-pns-admin-managed.arn
}