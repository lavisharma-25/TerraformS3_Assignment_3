data "archive_file" "zip_python" {
  type        =     var.archive_type
  source_file =     var.source_data
  output_path =    var.zip_path
}

resource "aws_lambda_function" "lambda_func" {
  function_name =      var.func_name
  filename      =  var.zip_path
  role          = var.role_attach
  runtime       =      var.lang
  handler       =    var.code_handler
  tags = var.resource_tags
}