output "policy_output" {
  value = aws_iam_policy.iam_policy.arn
}

output "role_output" {
  value = aws_iam_role.role_lambda.name
}

output "role_arn" {
  value = aws_iam_role.role_lambda.arn
}