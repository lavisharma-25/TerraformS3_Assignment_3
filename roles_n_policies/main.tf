resource "aws_iam_role" "role_lambda" {
  name = var.name_of_role
  assume_role_policy = file("./roles_n_policies/Policies/assume_policy.json")
  tags = var.resource_tags
}

resource "aws_iam_policy" "iam_policy" {
  name = var.name_of_policy
  policy = file("./roles_n_policies/Policies/cloudwatch.json")
  tags = var.resource_tags
}

resource "aws_iam_role_policy_attachment" "policy_attach" {
  policy_arn = var.policy_arn_id
  role       = var.role_name
}
