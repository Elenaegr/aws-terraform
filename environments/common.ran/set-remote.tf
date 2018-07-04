terraform {
  backend "s3" {
    bucket = "common.ran-euwest1-terraform-state"
    key    = "common.ran.tfstate"
    region = "eu-west-1"
  }
}
