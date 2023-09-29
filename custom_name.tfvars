rname = "lavish-role-tf"

pname = "CloudWatchAccess"

arch_type = "zip"

source_path = "./lambda_tf/Python/python_code.py"

data_path = "./lambda_tf/Python/python_code.zip"

fun_name = "lambda-lavish-tf"

language = "python3.11"

hand = "python_code.lambda_handler"

common_tags = {
  "Name" = "lavish"
  "Owner" = "lavish.sharma@cloudeq.com"
  "Purpose" = "assignment"
}