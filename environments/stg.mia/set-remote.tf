terraform {
  backend "s3" {
    bucket = "stg.mia-euwest1-terraform-state"
    key    = "stg.mia.tfstate"
    region = "eu-west-1"
  }
}
