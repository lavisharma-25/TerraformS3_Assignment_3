terraform {
  backend "s3" {
    bucket = "lavish-s3"
    key    = "custom_name.tfstate"
    region = "ap-south-1"
  }
}