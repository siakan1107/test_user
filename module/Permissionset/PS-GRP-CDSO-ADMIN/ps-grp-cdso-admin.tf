data "aws_ssoadmin_instances" "ps-grp-cdso-admin" {}

resource "aws_ssoadmin_permission_set" "ps-grp-cdso-admin-managed" {
  name         = "ps-grp-cdso-admin-managed"
  instance_arn = tolist(data.aws_ssoadmin_instances.ps-grp-cdso-admin.arns)[0]
}

resource "aws_ssoadmin_managed_policy_attachment" "ec2_admin_managed_policy_attachment" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.ps-grp-cdso-admin.arns)[0]
  managed_policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  permission_set_arn = aws_ssoadmin_permission_set.ps-grp-cdso-admin-managed.arn
}

data "aws_iam_policy_document" "inline-policy" {
  statement {
    sid = "1"

    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
    ]

    resources = [
      "arn:aws:s3:::*",
    ]
  }
}

resource "aws_ssoadmin_permission_set_inline_policy" "inline" {
  inline_policy      = data.aws_iam_policy_document.inline-policy.json
  instance_arn       = tolist(data.aws_ssoadmin_instances.ps-grp-cdso-admin.arns)[0]
  permission_set_arn = aws_ssoadmin_permission_set.ps-grp-cdso-admin-managed.arn
}