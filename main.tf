module "roles" {
  source        = "./roles_n_policies"
  name_of_role = var.rname
  name_of_policy = var.pname
  policy_arn_id = module.roles.policy_output
  role_name     = module.roles.role_output
  resource_tags = merge(var.common_tags)
}

module "lambda" {
  source      = "./lambda_tf"
  archive_type = var.arch_type
  source_data = var.source_path
  zip_path = var.data_path
  func_name = var.fun_name
  lang = var.language
  code_handler = var.hand
  role_attach = module.roles.role_arn
  resource_tags = merge(var.common_tags)
}