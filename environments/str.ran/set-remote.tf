terraform {
  backend "s3" {
    bucket = "str.ran-euwest1-terraform-state"
    key = "str.ran.tfstate"
    region = "eu-west-1"
  }
}
