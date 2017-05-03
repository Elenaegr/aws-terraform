terraform {
  backend "s3" {
    bucket = "dev.ran-euwest1-terraform-state"
    key    = "dev.ran.tfstate"
    region = "eu-west-1"
  }
}
